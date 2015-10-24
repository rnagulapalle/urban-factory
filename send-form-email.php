<?php
error_reporting(E_ALL | E_STRICT); 
ini_set("display_errors", 1);
require_once('config.php');
require_once('recaptchalib.php');
require 'vendor/autoload.php';
use SparkPost\SparkPost;
use SparkPost\Transmission;

if(isset($_POST['email'])) {

    if($use_recaptcha === true){
        $resp = recaptcha_check_answer($privatekey, $_SERVER["REMOTE_ADDR"], $_POST["recaptcha_challenge_field"], $_POST["recaptcha_response_field"]);
    }


    function died($error) {
        $data = "We are very sorry, but there were error(s) found with the form you submitted. ";
        $data .= "These errors appear below.<br />";
        $data .= $error;
        $data .= "Please go back and fix these errors.<br />";
        send_request($data, true);
    }

    function send_request($data, $error = false){
        $return = array(
            'error' => $error,
            'message' => $data
        );
        echo json_encode($return);
        die();
    }

    function clean_string($string) {
        $bad = array("content-type", "bcc:", "to:", "cc:", "href");
        return str_replace($bad, "", $string);
    }

    if(!isset($_POST['name']) ||
        !isset($_POST['email']) ||
        !isset($_POST['message'])) {
        died('We are sorry, but there appears to be a problem with the form you submitted.');
    }

    $name = $_POST['name']; // required
    $email_from = $_POST['email']; // required
    $message = $_POST['message']; // required
    $subject = 'Message from site form';
    $phone = $_POST['phone'];

    $error_message = "";
    $email_exp = '/^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/';
    if(!preg_match($email_exp,$email_from)) {
        $error_message .= 'The Email Address you entered does not appear to be valid.<br />';
    }
    $string_exp = "/^[A-Za-z .'-]+$/";
    if(!preg_match($string_exp,$name)) {
        $error_message .= 'The Name you entered does not appear to be valid.<br />';
    }
    if(strlen($message) < 2) {
        $error_message .= 'The Comment you entered do not appear to be valid.<br />';
    }
    if($use_recaptcha === true && !$resp->is_valid){
        $error_message .= "The reCAPTCHA wasn't entered correctly.<br />";
    }


    if(strlen($error_message) > 0) {
        died($error_message);
    }

    $email_message = "Form details below.<br/><br/>";
    $email_message .= "Name: ".clean_string($name)."<br/>";
    $email_message .= "Email: ".clean_string($email_from)."<br/>";
    $email_message .= "Phone: ".clean_string($phone)."<br/>";
    $email_message .= "Comment: ".clean_string($message)."<br/>";

    
    SparkPost::setConfig(["key"=>"eb26e11e5231e1b6e981e7a5cfc8398530898aab"]);

    try {
        // Build your email and send it!
        Transmission::send(array('campaign'=>'first-mailing',
            'from'=>'test@sparkpostbox.com', // 'test@sparkpostbox.com'
            'subject'=>$email_subject,
            'html'=>'<html><body><h1>Congratulations, {{name}}!</h1><br/><p>'.$email_message.'</p></body></html>',
            'text'=>'Congratulations, {{name}}!! You just sent your very first mailing!\n'.$email_message,
            'substitutionData'=>array('name'=>'You have received an inquiry'),
            'recipients'=>array(array('address'=>array('name'=>'Raj', 'email'=>'raj@urcloset.in' )))
        ));

        send_request('Thank you for contacting us. We will be in touch with you very soon.');
    } catch (Exception $err) {
        send_request('Something went wrong in the server!, Sorry try again!');
        //var_dump($err);
    }
}
?>