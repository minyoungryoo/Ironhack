// Write your Pizza Builder JavaScript in this file.
$(document).ready (function() {

// $('section').hide();
$('.green-pepper').hide();
$('.pep').toggle();
$('.mushroom').toggle();
$('.sauce').toggleClass('sauce-white');
$('.crust').toggleClass('crust-gluten-free');

$('#1').toggle();
$('#2').toggle();
$('#3').toggle();
$('#4').toggle();
$('#5').toggle();

var total = 10;

$('strong').html(total);

function gpepper (){
$('.green-pepper').toggle();
$('.btn-green-peppers').toggleClass('active');
$('#3').toggle();
if($('.btn-green-peppers').hasClass('active')){
total+=1;
}else{
total-=1; 
}
$('strong').html(total);
}
$(".btn-green-peppers").click(gpepper);


function pepperoni (){
$('.pep').toggle();
$('.btn-pepperonni').toggleClass('active');
// $('.list').toggle("<li>" + "$1 pepperonni" + "</li>");
$('#1').toggle();
if($('.btn-pepperonni').hasClass('active')){
total+=1;
}else{
total-=1; 
}
$('strong').html(total);
}
$(".btn-pepperonni").click(pepperoni);

function mushroom (){
$('.mushroom').toggle();
$('.btn-mushrooms').toggleClass('active');
$('#2').toggle();
if($('.btn-mushrooms').hasClass('active')){
total+=1;
}else{
total-=1; 
}
$('strong').html(total);
}
$(".btn-mushrooms").click(mushroom);

function sauce (){
$('.sauce').toggleClass('sauce-white');
$('.btn-sauce').toggleClass('active');
$('#4').toggle();
if($('.btn-sauce').hasClass('active')){
total+=3;
}else{
total-=3; 
}
$('strong').html(total);
}
$(".btn-sauce").click(sauce);

function crust (){
$('.crust').toggleClass('crust-gluten-free');
$('.btn-crust').toggleClass('active');
$('#5').toggle();
if($('.btn-crust').hasClass('active')){
total+=5;
}else{
total-=5; 
}
$('strong').html(total);
}
$(".btn-crust").click(crust);




});