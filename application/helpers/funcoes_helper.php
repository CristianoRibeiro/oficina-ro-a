<?php
    function ErrosValidacao(){
        if(validation_errors()) echo '<div class="alert alert-danger" role="alert">'. validation_errors('<p>', '</p>'. '</div>');
}
?>

