function redirectToUploadPage() {
    window.location.href = 'upload1.html';
  }
  
  function showFileName(inputId, fileNameId) {
    const fileInput = document.getElementById(inputId);
    const fileNameSpan = document.getElementById(fileNameId);
    if (fileInput.files.length > 0) {
      fileNameSpan.textContent = fileInput.files[0].name;
    } else {
      fileNameSpan.textContent = '';
    }
  }
  
  function uploadFile(inputId, contentId, table) {
    const fileInput = document.getElementById(inputId);
    const file = fileInput.files[0];
    if (!file) {
      alert('Please select a file first.');
      return;
    }
  
    const formData = new FormData();
    formData.append('file', file);
    formData.append('table', table);
  
    fetch('upload1.php', {
      method: 'POST',
      body: formData
    })
    .then(response => response.text())
    .then(data => {
      document.getElementById(contentId).innerHTML = data;
    })
    .catch(error => console.error('Error uploading file:', error));
  }
  
  function toggleFileInput(fileInputId) {
    const fileInput = document.getElementById(fileInputId + 'Matches');
    fileInput.style.display = fileInput.style.display === 'none' ? 'block' : 'none';
  }
  
  function viewMatches(inputId, table) {
    const fileInput = document.getElementById(inputId);
    const file = fileInput.files[0];
    if (!file) {
        alert('Please select a file first.');
        return;
    }
  
    const formData = new FormData();
    formData.append('file', file);
    formData.append('table', table);
  
    fetch('fetch_matches.php', {
        method: 'POST',
        body: formData
    })
    .then(response => response.json())
    .then(matches => {
        if (matches.length > 0) {
            let matchDetails = matches.map(match => `Source IP/Host: ${match.source_ip || match.destination_host}`).join('\n');
            alert(`Matches found in ${table}:\n${matchDetails}`);
            console.log(matches); // Optional: Log matches to console for debugging
            // Optionally, update the UI to display matches
        } else {
            alert(`No matches found in ${table}.`);
        }
    })
    .catch(error => console.error('Error fetching matches:', error));
  }
  
  
  