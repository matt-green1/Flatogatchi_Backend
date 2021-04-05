const keyOptions = {"ArrowUp": up ,"ArrowDown": down}
    

    document.addEventListener("keydown", function(button){
      (keyOptions[button.key] || idk(button) ) &&  keyOptions[button.key]() 

   })

function up(){
 paragraph.textContent = "I know this, you pressed up, i'll run this specific function"
}

function down(){
paragraph.textContent = "I know this, you pressed down, i'll run this specific function, too"
}

function idk(button){
console.log(keyOptions[button.key] = "new value", keyOptions[button.key]  ,`I have no idea what this is, you pressed ${button.key}. don't know what to do with it`)
}

