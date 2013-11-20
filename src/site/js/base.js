/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
    
    $('#login input').focus(function(){ 
        if (this.value==this.defaultValue) {
            this.value='';
    }
   		
        $('#login input').css('color','#1a1919');
    });
        
    $('#login input').focusout(function(){
        if (this.value=='') {
            this.value=this.defaultValue;
            $('#login input').css('color','#b5b5b5');
        }
    });
    
    $('#cadastro input').focus(function(){
        if (this.value==this.defaultValue) {
            this.value='';
    }
   		
        $('#cadastro input').css('color','#a9a9a9');
    });
        
    $('#cadastro input').focusout(function(){
        if (this.value=='') {
            this.value=this.defaultValue;
            $('#login input').css('color','#b5b5b5');
        }
    });
    
});
