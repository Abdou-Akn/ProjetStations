window.addEventListener('load',initMarksStation);

function initMarksStation() {
    document.forms.form_notes.addEventListener('submit',sendMarks); 
}

  function sendMarks(ev) {
    ev.preventDefault();
    let args = new FormData(this);
    let url = 'services/noteStation.php';
    fetchFromJson(url,{method: 'post', body : args, credentials: 'same-origin'})
    .then(processAnswer)
    .then(stationUpdated,errorMarks);
  }
  
  function stationUpdated(res) {
    document.forms.form_notes.errormsgnotes.value = 'les notes ont bien étés ajouté à '+res.id;
  
  }
  
  function errorMarks(error) {  
    document.forms.form_notes.errormsgnotes.value = 'échec : ' + error.message;
  }

    
function processAnswer(answer){
    if (answer.status == "ok"){
        return answer.result;
    }
    else
      throw new Error(answer.message);
  }


 