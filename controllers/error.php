<?php

class ErrorController extends xWebController {

    /**
     * Return the HTML to display when an exception occurs
     * @return string HTML to inject into layout
     */
    function error_contents() {
        return xView::load('error/display', $this->params)->render();
    }
    function defaultAction() {
        // Error message display
        $html = xView::load('error/display', $this->params, $this->meta)->render();
        xWebFront::messages($html, 'error');
        // Save exception in session for optional report action
        $this->session('exception', $this->params['exception']);
        return $this->error_contents();
    }

    /**
     * Reports an exception.
     * @return boolean True if exception successfully reported, false otherwise
     */
    function error_report() {
        // To be overriden
        $report = xView::load('error/report.mail', array('items' => array(
            'exception' => $exception,
            'username' => xContext::$auth->username(),
            'history' => xWebFront::$history
        )))->render();
        $mail_sent = mail(
            xContext::$config->site->mail->webmaster->mail,
            'Error report',
            $report,
            "From: ".xContext::$config->site->mail->noreply->name."<".xContext::$config->site->mail->noreply->mail.">"
        );
        return $mail_sent;
    }
    function reportAction() {
        $this->meta = xUtil::array_merge($this->meta, array(
            'title' => _('Report error')
        ));
        $exception = $this->session('exception');
        if ($exception) $reported = $this->error_report();
        // Reset session exception
        $this->session('exception', null);
        // Setups user message
        if (@$reported) xWebFront::messages(_('Error details have been sent to our team'), 'ok');
        else xWebFront::messages(_('Error details could not be sent to our team :('), 'error');
        return xView::load('error/report')->render();
    }
}