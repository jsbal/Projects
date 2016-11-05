// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function hide_div1()// This function is for client addition in invoice section!
{
  if ($('client_company_name').value == "")
    $('error_msg').style.display = "";
  else
    $('add_client_from_invoice').style.display = "none";
}
		
function hide_div2()  // This function is for client addition in invoice section!
{
  if ($('product_service_name').value == "")
    $('error_msg').style.display = "";
  else
    $('hide_add_product_service_from_invoice').style.display = "none";
}
	
function hide_div3()  // This function is for client addition in invoice section!
{
  $('hide_calculate_due_date').style.display = "none";
}

function hide_recalculate_expiry_date()
{
  $('hide_calculate_expiry_date').style.display = "none";
}

function hide_remove_expiry_date()
{
  $('hide_expiry_date').style.display = "none";
}

		
function today_invoice_date()     // This fuction is to reset invoice date to today date in mm/dd/yyyy format. Developed by Ghanshyam.
{
   $('invoice_date').value = getTodayDate();
}

function today_invoice_date_dd_mm_yy()     // This fuction is to reset invoice date to today date in dd/mm/yyyy format. Developed by Ghanshyam.
{
   $('invoice_date').value = getTodayDateDmy();
}

function today_invoice_due_date()     // This fuction is to reset invoice due date to today date. Developed by Nimesh.
{
   $('invoice_due_date').value = getTodayDate();
}

function today_invoice_due_date_dd_mm_yy()     // This fuction is to reset invoice due date to today date. Developed by Nimesh.
{
   $('invoice_due_date').value = getTodayDateDmy();
}

function today_estimate_date()     // This fuction is to reset invoice date to today date. Developed by Nimesh.
{
   $('estimate_date').value = getTodayDate();
}

function today_estimate_date_dd_mm_yy()     // This fuction is to reset invoice date to today date. Developed by Nimesh.
{
   $('estimate_date').value = getTodayDateDmy();
}

function today_estimate_expiry_date()     // This fuction is to reset invoice due date to today date. Developed by Nimesh.
{
   $('estimate_expiry_date').value = getTodayDate();
}

function today_estimate_expiry_date_dd_mm_yy()     // This fuction is to reset invoice due date to today date. Developed by Nimesh.
{
   $('estimate_expiry_date').value = getTodayDateDmy();
}

function getTodayDate()
{
    var now = new Date();
    var date = now.getDate();
    var month = now.getMonth() + 1;
    var year = now.getYear();
    if(year < 2000) { year = year + 1900; }
    var datestring = month + '/' + date + '/' + year;
    return datestring;
}

function getTodayDateDmy()
{
    var now = new Date();
    var date = now.getDate();
    var month = now.getMonth() + 1;
    var year = now.getYear();
    if(year < 2000) { year = year + 1900; }
    var datestring = date + '/' + month + '/' + year;
    return datestring;
}
// HERE THE BELOW MENTION CODE IS USED TO SHOW RADIO BUTTON WHEN SELECTED AS WEEKDAYS ONLY.
// CREATED BY GHANSHYAM RATHOD ON 16TH MAY 2009
function show_hide_div1(id)
  {
    if(id == "recurring_shedule_include_weekend_yes")
        {
        document.getElementById("move_to_friday").style.display = 'none';
        document.getElementById("move_to_monday").style.display = 'none';
        }
    else
    {
        document.getElementById("move_to_friday").style.display = 'block';
        document.getElementById("move_to_monday").style.display = 'block';
    }
  }

// This code is for autofill invoice payment in Add_Payment view for invoice. //
// This code is for autofill invoice payment in Add_Payment view for invoice. //
// Developed by Nimesh Nikum //

var AddPaymentLib={};
function checkAmountText(link)
  {    
    if(link == 'text')
    {      
      if(AddPaymentLib_getTextAmount() < AddPaymentLib_totalInvoiceAmount())
      {
        alert('Amount must not be less than the total of all invoice payments.');
        $('add_payment_by_client_amount').value = addcommas(AddPaymentLib_getTextAmount().toFixed(2));
        return false;
      }
    }
  
    remainingAmount = AddPaymentLib_getTextAmount();
    appliedAmount = 0.00;
    for(var k = 0; k <AddPaymentLib_totalpayments().length; k++)
    {
        var tempbalance = $('open_balance_' + k).value;
        if(remainingAmount >= tempbalance)
            {
                $('add_payment_' + k +'_amount').value = addcommas(DynamicLib_numberToString(tempbalance).toFixed(2));
                remainingAmount -= tempbalance;
                appliedAmount += DynamicLib_numberToString(tempbalance);
            }
        else
            {
                $('add_payment_' + k +'_amount').value = addcommas(remainingAmount.toFixed(2));
                appliedAmount += remainingAmount;
                remainingAmount = 0.00;
            }
    }

    document.getElementById('add_payment_by_client_amount').value = addcommas(AddPaymentLib_getTextAmount().toFixed(2));
    document.getElementById('amountapplied').innerHTML = addcommas(appliedAmount.toFixed(2));
    document.getElementById('amountremaining').innerHTML = addcommas((remainingAmount).toFixed(2));
    return AddPaymentLib_getTextAmount();
}

function checkInvoiceText(txtboxid){
    txtTotalAmount = DynamicLib_numberToString($('add_payment_by_client_amount').value);
    txtInvoiceAmount = DynamicLib_numberToString($('add_payment_' + txtboxid + '_amount').value);
    originalInvoiceAmount = DynamicLib_numberToString($('open_balance_' + txtboxid).value);

    if(txtInvoiceAmount > originalInvoiceAmount){
        alert('Please enter an amount less than or equal to open balance.');
        $('add_payment_' + txtboxid + '_amount').value = 0.00;
    }

    $('add_payment_' + txtboxid + '_amount').value = addcommas(AddPaymentLib_getInvoiceTextAmount(txtboxid).toFixed(2));

    appliedAmount = AddPaymentLib_totalInvoiceAmount();
    remainingAmount = txtTotalAmount - appliedAmount;

    if(isNaN(appliedAmount)){appliedAmount = 0.00;}
    if(isNaN(remainingAmount)){remainingAmount = 0.00;}
    document.getElementById('amountapplied').innerHTML= addcommas(appliedAmount.toFixed(2));
    document.getElementById('amountremaining').innerHTML= addcommas(remainingAmount.toFixed(2));
    return AddPaymentLib_getTextAmount();
}

function onSubmitValid() {
    appliedAmount = AddPaymentLib_totalInvoiceAmount();
    remainingAmount = AddPaymentLib_getTextAmount() - appliedAmount;
    if(remainingAmount != 0) {alert("Please, set all invoice payments equal to total amount entered!!!"); return false;}
    else {return true;}
}

//AddPaymentLib.getTextAmount = function(){
function AddPaymentLib_getTextAmount(){
  var val = DynamicLib_numberToString($('add_payment_by_client_amount').value);  
  if(isNaN(val) || val <= 0){val = 0.00;}
  return DynamicLib_numberToString(val.toFixed(2));
}

//AddPaymentLib.getInvoiceTextAmount = function(txtboxid){
 function AddPaymentLib_getInvoiceTextAmount(txtboxid){
  var val = DynamicLib_numberToString($('add_payment_' + txtboxid + '_amount').value);
  if(isNaN(val) || val < 0){val = 0.00;}
  return val;
 }

//AddPaymentLib.totalpayments = function(){
function AddPaymentLib_totalpayments(){
  var paymentform = $(document.forms[0].id);
  var payments = new Array();
  var c = 0;
  for(var j = 0; j < paymentform.elements.length; j++)
      {
          var current = paymentform.elements[j];
          if(current.id.indexOf('open_balance') == 0)
              {
                payments[c]=current;
                c++;
              }
      }
  return payments;
}

//AddPaymentLib_totalInvoiceAmount = function(){
function AddPaymentLib_totalInvoiceAmount(){
  var sumIA = 0.00;
  for(var x = 0; x < AddPaymentLib_totalpayments().length; x++)
      {
          sumIA += DynamicLib_numberToString($('add_payment_' + x +'_amount').value);
      }
  if(isNaN(sumIA)){sumIA = 0.00;}
  return sumIA;
}

//AddPaymentLib.clearAppliedPayments = function(){
function AddPaymentLib_clearAppliedPayments(){
  //if(isNaN(AddPaymentLib_getTextAmount())){return false;}
  for(var j = 0; j < AddPaymentLib_totalpayments().length; j++)
      {
          $('add_payment_' + j + '_amount').value = "0.00";
      }
  var txtamount = AddPaymentLib_getTextAmount();
  appliedAmount = 0.00;
  remainingAmount = txtamount;

  document.getElementById('amountapplied').innerHTML= addcommas(appliedAmount.toFixed(2));
  document.getElementById('amountremaining').innerHTML= addcommas(remainingAmount.toFixed(2));
}

//AddPaymentLib.applyPayment = function(txtboxid){
function AddPaymentLib_applyPayment(txtboxid){
  var oldInvoiceAmount = DynamicLib_numberToString($('add_payment_' + txtboxid + '_amount').value);
  if(isNaN(oldInvoiceAmount)){oldInvoiceAmount = 0.00;}
  var originalInvoiceAmount = DynamicLib_numberToString($('open_balance_' + txtboxid).value);
  var requiredAmount = originalInvoiceAmount - oldInvoiceAmount;

  appliedAmount = AddPaymentLib_totalInvoiceAmount();
  remainingAmount = AddPaymentLib_getTextAmount() - appliedAmount;

  if(requiredAmount < remainingAmount)
      {
          oldInvoiceAmount += requiredAmount;
          remainingAmount -= requiredAmount;
          appliedAmount += requiredAmount;
      }
  else
      {
          oldInvoiceAmount += remainingAmount;
          appliedAmount += remainingAmount;
          remainingAmount = 0.00;
      }

  $('add_payment_' + txtboxid + '_amount').value = addcommas(oldInvoiceAmount.toFixed(2));
  document.getElementById('amountapplied').innerHTML= addcommas(appliedAmount.toFixed(2));
  document.getElementById('amountremaining').innerHTML= addcommas(remainingAmount.toFixed(2));
}

//AddPaymentLib.clearAppliedPayment = function(txtboxid){
 function AddPaymentLib_clearAppliedPayment(txtboxid){
  if(isNaN(AddPaymentLib_getInvoiceTextAmount(txtboxid))){return false;}

  $('add_payment_' + txtboxid + '_amount').value = "0.00";
  appliedAmount = AddPaymentLib_totalInvoiceAmount();
  remainingAmount = AddPaymentLib_getTextAmount() - appliedAmount;

  document.getElementById('amountapplied').innerHTML= addcommas(appliedAmount.toFixed(2));
  document.getElementById('amountremaining').innerHTML= addcommas(remainingAmount.toFixed(2));
}

//AddPaymentLib.calculateAmount = function(){
function AddPaymentLib_calculateAmount(){
  var sumIA = 0.00;
  for(var x = 0; x < AddPaymentLib_totalpayments().length; x++)
      {
          sumIA += DynamicLib_numberToString($('open_balance_' + x).value);
      }
  $('add_payment_by_client_amount').value = addcommas(sumIA.toFixed(2));
  checkAmountText('text');
  return sumIA;
}


// Below mentioned code is javascript code that is used whenever form loads. and it sets some controls to be focussed.
// Developed by Nimesh on 20/10/08

function onLoadForm(){
    var currentform = document.forms[0];
    if(currentform)
        {
            var currentformid = currentform.id;
            if(currentformid == "login") {$('user_login').focus();}
            if(currentformid == "new_client") {$('client_company_name').focus();}
            if(currentformid.indexOf("edit_client") == 0) {$('client_company_name').focus();}
            if(currentformid == "new_invoice") {$('invoice_client_id').focus();}
            //if(currentformid.indexOf("edit_invoice") == 0) {$('invoice_client_id').focus();}
            if(currentformid == "new_add_payment_by_client") {$('add_payment_by_client_client_id').focus();}
            if(currentformid.indexOf("edit_add_payment_by_client") == 0) {$('add_payment_by_client_amount').focus();}
            if(currentformid.indexOf("edit_account_owner") == 0) {$('account_owner_per_page').focus();}
            if(currentformid.indexOf("edit_company_profile") == 0) {$('company_profile_name').focus();}
            if(currentformid == "new_product_service") {$('product_service_name').focus();}
            if(currentformid.indexOf("edit_product_service") == 0) {$('product_service_name').focus();}
            if(currentformid == "add_subuser") {$('user_first_name').focus();}
            if(currentformid == "edit_subuser") {$('user_first_name').focus();}
            if(currentformid == "new_signup") {$('company_profile_name').focus();}
            if(currentformid == "new_invoice_template") {$('invoice_template_title').focus();}
            if(currentformid.indexOf("edit_invoice_template") == 0) {$('invoice_template_title').focus();}
        }
}


// Below mentioned code is used in add_invoice and edit_invoice form.
// That is used to automatically calculate the amount and tax as entered by user.
// Developed by Nimesh on 21/10/08

var AddInvoiceLib={};

//AddInvoiceLib.is_taxable = function()
function AddInvoiceLib_is_taxable()
{
    AddInvoiceLib_changeTax();
    new Effect.Highlight("calculate");
    new Effect.Highlight("grand_total_row");
}

//AddInvoiceLib.getDiscount = function()
function AddInvoiceLib_getDiscount()
{
    if($('invoice_discount')==null) return 0.00;
    var discount = DynamicLib_numberToString($('invoice_discount').value);
    if(isNaN(discount) || discount < 0) return 0.00;
    else return discount;
}

//AddInvoiceLib.getTax = function()
function AddInvoiceLib_getTax()
{
    if($('invoice_tax')==null) return 0.00;
    var tax = DynamicLib_numberToString($('invoice_tax').value);
    tax = tax.toFixed(2);
    if(isNaN(tax) || tax < 0) return 0.00;
    else return tax;
}

//AddInvoiceLib.getPenalty = function()
function AddInvoiceLib_getPenalty()
{
    var penalty
    if($('invoice_penalty')==null && ($('invoice_penalty_hidden').value)==null) return 0.00;
    if($('grand_total').value != 0)
        {
    if($('invoice_penalty').value==null || $('invoice_penalty').value=="")
    {
            penalty = DynamicLib_numberToString($('invoice_penalty_hidden').value);
    }
    else
    {
          penalty = DynamicLib_numberToString($('invoice_penalty').value);
    }
        }
    if(isNaN(penalty) || penalty < 0) return 0.00;
    else return penalty;    
}

//AddInvoiceLib.getTaxableAmount = function()
function AddInvoiceLib_getTaxableAmount()
{
    var total = DynamicLib_numberToString($('subtotal').value);
    var taxable = DynamicLib_numberToString($('taxable_amount').value);
    if(isNaN(taxable) || taxable < 0 || taxable > total) return 0.00;
    else return taxable;
}

//AddInvoiceLib.changeDiscount = function()
function AddInvoiceLib_changeDiscount()
{
    var thetime = new Date();
    var discount = AddInvoiceLib_getDiscount();
    var penalty = AddInvoiceLib_getPenalty();
    var total = DynamicLib_numberToString($('subtotal').value);
    total = total.toFixed(2);
    var tax = AddInvoiceLib_getTax();
    var total_tax = 0.00;
    var discount_per = 0.00;
    if($('hidden_taxable_amount')==null)
    {
      actual_taxable_amount     = 0.00;
    }
    else
    {
      var actual_taxable_amount = DynamicLib_numberToString($('hidden_taxable_amount').value);
      actual_taxable_amount = actual_taxable_amount.toFixed(2);
    }
    if($('total_items')==null)
    {
      var total_items = 0;
    }
    else
    {
      var total_items = parseInt($('total_items').value);
    }
    if($('taxable_items')==null)
    {
      var taxable_items = 0;
    }
    else
    {
      var taxable_items = parseInt($('taxable_items').value);
    }
    
    var divided_discount = discount/total_items;
    var taxable_discount = divided_discount * taxable_items;
    var taxable_amount = actual_taxable_amount - taxable_discount;
    if($('invoice_preference_is_discount').checked)
     {
         discount_per = (total * discount)/100;
         discount_per = parseFloat(discount_per);
         var a = (discount_per/total_items) 
         //taxable_amount = actual_taxable_amount - discount_per;
         taxable_amount = actual_taxable_amount - (taxable_items * a);
     }
     else
     {
        discount_per = discount;
        discount_per = parseFloat(discount_per);
     }
     
     if($('invoice_is_taxable')!=null)
     {
        if($('invoice_is_taxable').checked)
        {
            //taxable_amount = AddInvoiceLib_getTaxableAmount();
            total_tax = (tax * taxable_amount)/100;
            total_tax = parseFloat(total_tax);
        }
        else
        {
            total_tax = tax;
            total_tax = parseFloat(total_tax);
        }
     }
    
    if($('taxable_amount')!=null) 
    {
      $('taxable_amount').innerHTML = addcommas((taxable_amount).toFixed(2));
    }
    if($('total_tax_amount')!=null) 
    {
      $('total_tax_amount').innerHTML = addcommas(total_tax.toFixed(2));
    }
    
    $('invoice_discount').value = addcommas(discount.toFixed(2));
    //$('invoice_penalty').value = addcommas(penalty.toFixed(2));
       
    if (compareDate(thetime))
    {
        if($('pen_display').value != "true"){
            penalty = 0
        }
        else{
            $('invoice_penalty').value = addcommas(penalty.toFixed(2));
        }
    if($('taxable_items')!=null && $('taxable_items').value > 0)
    {
        $('grand_total_amount').innerHTML = addcommas(((total - discount_per) + penalty + total_tax).toFixed(2));
    }
    else
    {
        $('grand_total_amount').innerHTML = addcommas(((total - discount_per) + penalty).toFixed(2));
    }
    $('invoice_penalty').value = addcommas(penalty.toFixed(2));
    }
    else
    {
    if($('taxable_items')!=null && $('taxable_items').value > 0)
    {
        $('grand_total_amount').innerHTML = addcommas(((total - discount_per) + total_tax).toFixed(2));
    }
    else
    {
        $('grand_total_amount').innerHTML = addcommas(((total - discount_per)).toFixed(2));
    }
    $('invoice_penalty').value = null;
    }
}

function compareDate(thetime)
{
    var date = thetime.getFullYear()+"/"+(thetime.getMonth()+1)+"/"+thetime.getDate();
    var Day1 = thetime.getDate()
    var Month1 = thetime.getMonth()+1
    var Year1 = thetime.getFullYear()
    hidden_value = $('invoice_due_date_hidden').value;
    var Year2 =   hidden_value.substring(0,4);
    var Month2 = hidden_value.substring(5,7);
    var Day2 =  hidden_value.substring(8,10);
     if((Day2<=Day1&&Month2<=Month1&&Year2<=Year1)
               ||(Day2>=Day1&&Month2<Month1&&Year2<=Year1)
               ||(Day2>=Day1&&Month2>=Month1&&Year2<Year1)
               ||(Day2<=Day1&&Month2>=Month1&&Year2<Year1))
         	   return true;
             else
	           return false;
}

function AddInvoiceLib_changeTax()
{
    var thetime = new Date();
//    alert(compareDate(thetime));
    var tax                   = AddInvoiceLib_getTax();
    if(isNaN(tax) || tax < 0){$('invoice_tax').value = "0.00"; return false;}
    var total                 = DynamicLib_numberToString($('subtotal').value);
    total                     = total.toFixed(2);
    var discount              = AddInvoiceLib_getDiscount();
    var penalty               = AddInvoiceLib_getPenalty();
    var total_tax             = 0.00;
    var discount_per          = 0.00;
    if($('hidden_taxable_amount')==null)
    {
      actual_taxable_amount     = 0.00;
    }
    else
    {
      var actual_taxable_amount = DynamicLib_numberToString($('hidden_taxable_amount').value);
      actual_taxable_amount     = actual_taxable_amount.toFixed(2);  
    }
    if($('total_items')==null)
    {
      var total_items = 0;
    }
    else
    {
      var total_items = parseInt($('total_items').value);
    }
    if($('taxable_items')==null)
    {
      var taxable_items = 0;
    }
    else
    {
      var taxable_items = parseInt($('taxable_items').value);
    }

    var divided_discount      = discount/total_items;
    var taxable_discount      = divided_discount * taxable_items;
    var taxable_amount        = actual_taxable_amount - taxable_discount;

    if($('invoice_preference_is_discount').checked)
     {
         discount_per = (total * discount)/100;
         discount_per = parseFloat(discount_per);
         var a = (discount_per/total_items) 
         //taxable_amount = actual_taxable_amount - discount_per;
         taxable_amount = actual_taxable_amount - (taxable_items * a);
     }
     else
     {
        discount_per = discount;
        discount_per = parseFloat(discount_per);
     }

     if($('invoice_is_taxable')!=null)
     {
       if($('invoice_is_taxable').checked)
      {        
          //var taxable_amount = AddInvoiceLib_getTaxableAmount();
          total_tax = (tax * taxable_amount)/100;
          total_tax = parseFloat(total_tax);
      }
      else
      {
          total_tax = tax;
          total_tax = parseFloat(total_tax);
      }    
     }

     if($('taxable_amount')!=null) 
     {
         $('taxable_amount').innerHTML = addcommas(taxable_amount.toFixed(2));
     }
     if($('total_tax_amount')!=null) 
     {
         $('total_tax_amount').innerHTML = addcommas(total_tax.toFixed(2));
     }
     if($('invoice_tax')!=null) 
     {
        $('invoice_tax').value = addcommas(tax);
     }
    
    $('invoice_discount').value = addcommas(discount.toFixed(2));
 //   $('invoice_penalty').value = addcommas(penalty.toFixed(2));
    
//    if (total_items != 0) {
    
    if (compareDate(thetime))
    {
        if($('pen_display').value != "true"){
            penalty = 0
        }
        else{
            $('invoice_penalty').value = addcommas(penalty.toFixed(2));
        }
    if($('taxable_items')!=null && $('taxable_items').value > 0)
    {
        $('grand_total_amount').innerHTML = addcommas(((total - discount_per) + penalty + total_tax).toFixed(2));
    }
    else
    {
        $('grand_total_amount').innerHTML = addcommas(((total - discount_per) + penalty).toFixed(2));
    }
    $('invoice_penalty').value = addcommas(penalty.toFixed(2));    
    }
    else
    { 
    if($('taxable_items')!=null && $('taxable_items').value > 0)
    {
        $('grand_total_amount').innerHTML = addcommas(((total - discount_per) + total_tax).toFixed(2));
    }
    else
    {
        $('grand_total_amount').innerHTML = addcommas(((total - discount_per)).toFixed(2));
    }
    $('invoice_penalty').value = null;    
    }
//    }
}

//AddInvoiceLib.changeTaxableAmount = function()
function AddInvoiceLib_changeTaxableAmount()
{
    var tax = AddInvoiceLib_getTax();
    var total = DynamicLib_numberToString($('subtotal').value);
    total = total.toFixed(2);
    var discount = AddInvoiceLib_getDiscount();
    var taxable_amount = AddInvoiceLib_getTaxableAmount();
    if($('invoice_is_taxable').checked)
    {
        var total_tax = (tax * taxable_amount)/100;
        total_tax = parseFloat(total_tax);
        $('taxable_amount').innerHTML = addcommas(taxable_amount.toFixed(2));
        $('total_tax_amount').innerHTML = addcommas(total_tax.toFixed(2));
        
        $('invoice_tax').value = addcommas(tax);
        $('grand_total_amount').innerHTML = addcommas(((total - discount) + total_tax).toFixed(2));
    }
    else
    {
        $('taxable_amount').innerHTML = addcommas(taxable_amount.toFixed(2));
    }
}

//AddInvoiceLib.changePenalty = function()
function AddInvoiceLib_changePenalty()
{
    var thetime = new Date();
    var penalty = AddInvoiceLib_getPenalty();
    var discount = AddInvoiceLib_getDiscount();
    var total = DynamicLib_numberToString($('subtotal').value);
    total = total.toFixed(2);
    var tax = AddInvoiceLib_getTax();
    var total_tax = 0.00;
    var discount_per = 0.00;
    if($('hidden_taxable_amount')==null)
    {
      actual_taxable_amount     = 0.00;
    }
    else
    {
      var actual_taxable_amount = DynamicLib_numberToString($('hidden_taxable_amount').value);
      actual_taxable_amount = actual_taxable_amount.toFixed(2);
    }
    if($('total_items')==null)
    {
      var total_items = 0;
    }
    else
    {
      var total_items = parseInt($('total_items').value);
    }
    if($('taxable_items')==null)
    {
      var taxable_items = 0;
    }
    else
    {
      var taxable_items = parseInt($('taxable_items').value);
    }
    
    var divided_discount = discount/total_items;
    var taxable_discount = divided_discount * taxable_items;
    var taxable_amount = actual_taxable_amount - taxable_discount;
    
    if($('invoice_preference_is_discount').checked)
     {
         discount_per = (total * discount)/100;
         discount_per = parseFloat(discount_per);
         var a = (discount_per/total_items) 
         //taxable_amount = actual_taxable_amount - discount_per;
         taxable_amount = actual_taxable_amount - (taxable_items * a);
     }
     else
     {
        discount_per = discount;
        discount_per = parseFloat(discount_per);
     }
     if($('invoice_is_taxable')!=null)
     {
       if($('invoice_is_taxable').checked)
      {
          //taxable_amount = AddInvoiceLib_getTaxableAmount();
          total_tax = (tax * taxable_amount)/100;
          total_tax = parseFloat(total_tax);
      }
      else
      {
          total_tax = tax;
          total_tax = parseFloat(total_tax);
      }
     }
    if($('taxable_amount')!=null) 
    {
      $('taxable_amount').innerHTML = addcommas((taxable_amount).toFixed(2));
    }
    if($('total_tax_amount')!=null) 
    {
      $('total_tax_amount').innerHTML = addcommas(total_tax.toFixed(2));
    }
    
    $('invoice_discount').value = addcommas(discount.toFixed(2));
    //$('invoice_penalty').value = addcommas(penalty.toFixed(2));
    
    if (compareDate(thetime))
    { 
        if($('pen_display').value != "true"){
            penalty = 0
        }
        else{
            $('invoice_penalty').value = addcommas(penalty.toFixed(2));
        }
    if($('taxable_items')!=null && $('taxable_items').value > 0)
    {
        $('grand_total_amount').innerHTML = addcommas(((total - discount_per)+ penalty + total_tax).toFixed(2));
    }
    else
    {
        $('grand_total_amount').innerHTML = addcommas(((total - discount_per) + penalty).toFixed(2));
    }
    $('invoice_penalty').value = addcommas(penalty.toFixed(2));
    }
    else
    {
    if($('taxable_items')!=null && $('taxable_items').value > 0)
    {
        $('grand_total_amount').innerHTML = addcommas(((total - discount_per) + total_tax).toFixed(2));
    }
    else
    {
        $('grand_total_amount').innerHTML = addcommas(((total - discount_per)).toFixed(2));
    }
    $('invoice_penalty').value = null;
    }
}

var AddTemplateLib={};

//AddTemplateLib.is_taxable = function()
function AddTemplateLib_is_taxable()
{
    //AddTemplateLib.changeTax();
    AddTemplateLib_changeTax();
    new Effect.Highlight("calculate");
    new Effect.Highlight("grand_total_row");
}

//AddTemplateLib.getDiscount = function()
function AddTemplateLib_getDiscount()
{
    var discount = DynamicLib_numberToString($('invoice_template_discount').value);
    discount = discount.toFixed(2);
    if(isNaN(discount) || discount < 0) return 0.00;
    else return discount;
}

//AddTemplateLib.getTax = function()
function AddTemplateLib_getTax()
{
    if($('invoice_template_tax')==null) return 0.00;
    var tax = DynamicLib_numberToString($('invoice_template_tax').value);
    tax = tax.toFixed(2);
    if(isNaN(tax) || tax < 0) return 0.00;
    else return tax;
}

//AddTemplateLib.getTaxableAmount = function()
function AddTemplateLib_getTaxableAmount()
{
    var total = DynamicLib_numberToString($('subtotal').value);
    var taxable = DynamicLib_numberToString($('taxable_amount').value);
    if(isNaN(taxable) || taxable < 0 || taxable > total) return 0.00;
    else return taxable;
}

//AddTemplateLib.changeDiscount = function()
function AddTemplateLib_changeDiscount()
{
    var discount = AddTemplateLib_getDiscount();
    var total = DynamicLib_numberToString($('subtotal').value);
    total = total.toFixed(2);
    var tax = AddTemplateLib_getTax();
    var total_tax = 0.00;
    var discount_per = 0.00;
    var actual_taxable_amount = DynamicLib_numberToString($('hidden_taxable_amount').value);
    actual_taxable_amount = actual_taxable_amount.toFixed(2)
    var total_items = parseInt($('total_items').value);
    var taxable_items = parseInt($('taxable_items').value);
    var divided_discount = discount/total_items;
    var taxable_discount = divided_discount * taxable_items;
    var taxable_amount = actual_taxable_amount - taxable_discount;
    
    if($('template_preference_is_discount').checked)
     {
         discount_per = (total * discount)/100;
         discount_per = parseFloat(discount_per);
         var a = (discount_per/total_items) 
         //taxable_amount = actual_taxable_amount - discount_per;
         taxable_amount = actual_taxable_amount - (taxable_items * a);
     }
     else
     {
        discount_per = discount;
        discount_per = parseFloat(discount_per);
     }
     if($('invoice_template_is_taxable').checked)
    {
        //taxable_amount = AddTemplateLib_getTaxableAmount();
        total_tax = (tax * taxable_amount)/100;
        total_tax = parseFloat(total_tax);
    }
    else
    {
        total_tax = tax;
        total_tax = parseFloat(total_tax);
    }
    $('taxable_amount').innerHTML = addcommas((taxable_amount).toFixed(2));
    $('total_tax_amount').innerHTML = addcommas(total_tax.toFixed(2));
    $('invoice_template_discount').value = addcommas(discount);
    $('grand_total_amount').innerHTML = addcommas(((total - discount_per) + total_tax).toFixed(2));
}

//AddTemplateLib.changeTax = function()
function AddTemplateLib_changeTax()
{
    var tax = AddTemplateLib_getTax();
    if(isNaN(tax) || tax < 0){$('invoice_template_tax').value = "0.00"; return false;}
    var total = DynamicLib_numberToString($('subtotal').value);
    total = total.toFixed(2);
    var discount = AddTemplateLib_getDiscount();
    var total_tax = 0.00;
    var discount_per = 0.00;
    if($('hidden_taxable_amount')==null)
    {
      actual_taxable_amount     = 0.00;
    }
    else
    {
      var actual_taxable_amount = DynamicLib_numberToString($('hidden_taxable_amount').value);
      actual_taxable_amount = actual_taxable_amount.toFixed(2);
    }
    if($('total_items')==null)
    {
      var total_items = 0;
    }
    else
    {
      var total_items = parseInt($('total_items').value);
    }
    if($('taxable_items')==null)
    {
      var taxable_items = 0;
    }
    else
    {
      var taxable_items = parseInt($('taxable_items').value);
    }
    var divided_discount = discount/total_items;
    var taxable_discount = divided_discount * taxable_items;
    var taxable_amount = actual_taxable_amount - taxable_discount;
    
    if($('template_preference_is_discount').checked)
     {
         discount_per = (total * discount)/100;
         discount_per = parseFloat(discount_per);
         var a = (discount_per/total_items) 
         //taxable_amount = actual_taxable_amount - discount_per;
         taxable_amount = actual_taxable_amount - (taxable_items * a);
     }
     else
     {
        discount_per = discount;
        discount_per = parseFloat(discount_per);
     }
     if ($('invoice_template_is_taxable')!=null)
     {
       if($('invoice_template_is_taxable').checked)
      {
          //var taxable_amount = AddTemplateLib_getTaxableAmount();
          total_tax = (tax * taxable_amount)/100;
          total_tax = parseFloat(total_tax);
      }
      else
      {
          total_tax = tax;
          total_tax = parseFloat(total_tax);
      }
     }
    
    if($('taxable_amount')!=null) 
    {
      $('taxable_amount').innerHTML = addcommas(taxable_amount.toFixed(2));
    }
    if($('total_tax_amount')!=null) 
    {
      $('total_tax_amount').innerHTML = addcommas(total_tax.toFixed(2));
    }
    if($('invoice_template_tax')!=null) 
    {
      $('invoice_template_tax').value = addcommas(tax);
    }
     
    $('invoice_template_discount').value = addcommas(discount);
    
    if($('taxable_items')!=null && $('taxable_items').value > 0)
    {
      $('grand_total_amount').innerHTML = addcommas(((total - discount_per) + total_tax).toFixed(2));
    }
    else
    {
      $('grand_total_amount').innerHTML = addcommas(((total - discount_per)).toFixed(2));
    }
}

//AddTemplateLib.changeTaxableAmount = function()
function AddTemplateLib_changeTaxableAmount()
{
    var tax = AddTemplateLib_getTax();
    var total = DynamicLib_numberToString($('subtotal').value);
    total = total.toFixed(2);
    var discount = AddTemplateLib_getDiscount();
    var taxable_amount = AddTemplateLib_getTaxableAmount();
    if($('invoice_template_is_taxable').checked)
    {
        var total_tax = (tax * taxable_amount)/100;
        total_tax = DynamicLib_numberToString(total_tax);
        $('taxable_amount').innerHTML = addcommas(taxable_amount.toFixed(2));
        $('total_tax_amount').innerHTML = addcommas(total_tax.toFixed(2));
        $('invoice_template_tax').value = addcommas(tax);
        $('grand_total_amount').innerHTML = addcommas(((total - discount) + total_tax).toFixed(2));
    }
    else
    {
        $('taxable_amount').innerHTML = addcommas(taxable_amount.toFixed(2));
    }
}

function addcommas(sValue)
{
var sRegExp = new RegExp('(-?[0-9]+)([0-9]{3})');

while(sRegExp.test(sValue.toString())) {
  sValue = sValue.replace(sRegExp, '$1,$2');
}
return sValue;
} 


var DynamicLib = {};
//DynamicLib_numberToString = function(val){
 function DynamicLib_numberToString(val){
    var result = val;
    result = result.replace(/[^\d\.-]*/g, '')
    result = parseFloat(result);
    return result;
 }

var DataLib = {};
//DataLib.keyPressedCode = function(keyEvent) {
function DataLib_keyPressedCode(keyEvent) {
  keyCode = -1;
  keyEvent = DataLib_normalizeKeyEvent(keyEvent);
  if(typeof(keyEvent.keyCode ) == 'number')
  {
    keyCode = keyEvent.keyCode;
  }
  else if(typeof(keyEvent.which) == 'number')
  {
    keyCode = keyEvent.which;
  }
  else if(typeof(keyEvent.charCode) == 'number')
  {
    keyCode = keyEvent.charCode;
  }
  return keyCode;
}

//DataLib.normalizeKeyEvent = function(e){
function DataLib_normalizeKeyEvent(e){
  if(!e)
  {
    return window.event;
  }
  else
  {
    return e;
  }
  return e;
}

//DataLib.keyPressedIsAlphaNumeric = function(keyEvent) {
function DataLib_keyPressedIsAlphaNumeric(keyEvent) {
  return DataLib_codeIsAlphaNumeric(DataLib_keyPressedCode(keyEvent));
}


//DataLib.codeIsAlphaNumeric = function(keyCode) {
function DataLib_codeIsAlphaNumeric(keyCode) {
  if ((keyCode < 48) || (keyCode > 122) || 
    ((keyCode > 57) && (keyCode < 65)) || 
    ((keyCode > 90) && (keyCode < 97))   ) 
  {
    return false;
  }
  else
  {
    return true;
  }
}

// FOLLOWING FUNCTION WHENVER IS CALLED, DROP OUTS ELEMENT WITH SPECIFIED ID AFTER SPECIFIED DELAY.
function dropOutNotification(element_id)
{
    new Effect.DropOut(element_id);
}