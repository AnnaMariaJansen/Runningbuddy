const lupenSuche = () => {
const searchLupe = document.getElementById("SuchLupe");
const searchBar = document.getElementById("search-bar");
  if (searchLupe && searchBar) {
    searchLupe.addEventListener('click', (event) => {
    // searchBar.style.display="block"

    if (searchBar.style.maxHeight == "0px") {
      searchBar.style.maxHeight = "50px";
    } else {
      searchBar.style.maxHeight = "0px";
    }
    // if (searchBar.style.display == "block") {
    //   searchBar.style.display="none"
    // } else {
    //   searchBar.style.display="block"
    // };
    console.log(event)


  });
  };
};

export { lupenSuche }
