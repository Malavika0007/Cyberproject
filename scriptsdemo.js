function uploadAndCheckMatches() {
    const fileInput = document.getElementById('fileUploadMatches');
    const file = fileInput.files[0];
    
    if (!file) {
      alert("Please select a file.");
      return;
    }
  
    const formData = new FormData();
    formData.append('file', file);
    formData.append('table', 'matches'); // You may need to specify a table if necessary
  
    fetch('fetch_matches.php', {
      method: 'POST',
      body: formData
    })
    .then(response => response.json())
    .then(data => {
      if (data.length > 0) {
        let matchedIps = data.map(row => row.source_ip || row.destination_host).join(', ');
        alert(`Malicious IPs/Hostnames found: ${matchedIps}`);
      } else {
        alert("No matches found.");
      }
    })
    .catch(error => console.error('Error:', error));
  }
  
  // New function to show database content
  function showDatabase(table) {
    fetch(`fetch_database.php?table=${table}`)
      .then(response => response.text())
      .then(data => {
        let contentDiv;
        switch (table) {
          case 'greendb':
            contentDiv = document.getElementById('databaseContentGREENDB');
            break;
          case 'reddb':
            contentDiv = document.getElementById('databaseContentREDDB');
            break;
          case 'amberdb':
            contentDiv = document.getElementById('databaseContentAMBERDB');
            break;
          default:
            contentDiv = null;
        }
        
        if (contentDiv) {
          contentDiv.innerHTML = data; // Update content with HTML table
          // Append the Upload File button
          contentDiv.insertAdjacentHTML('beforeend', '<br><button onclick="redirectToUploadPage()">Upload File</button>');
        } else {
          console.error('Invalid table name');
        }
      })
      .catch(error => console.error('Error:', error));
  }
  
  function redirectToUploadPage() {
    window.location.href = 'upload1.html';
  }
  
  
  // New function to fetch and display matches
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
            alert(`Matches found in ${table}: Malicious IPs/Hostnames found.`);
            console.log(matches); // Optional: Log matches to console for debugging
            // Optionally, update the UI to display matches
        } else {
            alert(`No matches found in ${table}.`);
        }
    })
    .catch(error => console.error('Error fetching matches:', error));
  }