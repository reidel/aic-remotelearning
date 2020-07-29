
function goToSubdir(subdirectory) {
  var x = location.host;
  document.location = x + subdirectory;
}

function goToSubdirHostname(subdirectory) {
  var x = location.hostname;
  document.location = x + subdirectory;
}
