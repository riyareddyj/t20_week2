const url = "https://jsonplaceholder.typicode.com/posts";

//   posts class
class Post {
    constructor(userId, title, body) {
      this.userNames = {
        1: "Athota Srilatha",
        2: "Bandaru Sampath Kumar",
        3: "Gollakaram Ganga Bhavani",
        4: "Gowtham Meka",
        5: "Mayuraj Ranawat",
        6: "Narendiran K",
        7: "Pratham Madhunapanthula",
        8: "Riya Reddy",
        9: "Shaik Sameer",
        10: "Suriyan K",
        11: "Vaishnavi Panta",
        12: "Yateesh Tangudu"
      };
      
      this.name = this.userNames[userId];
      this.title = title;
      this.body = body;
    }
}

// fetch API
fetch(url)
.then(response => response.json())
.then(data => {
    console.log(data);
    for(let x = 0; x < data.length; x++){
        const td1 = data[x]["userId"];
        const td2 = data[x]["title"];
        const td3 = data[x]["body"];
        const post = new Post(td1, td2, td3);
        console.log(post);
        const dataDisplay = document.getElementById("postsTable");
        const tableRow = document.createElement("tr");
        const nameElement = document.createElement("td");
        nameElement.textContent = post.name;
        const titleElement = document.createElement("td");
        titleElement.textContent = post.title;
        const bodyElement = document.createElement("td");
        bodyElement.textContent = post.body;

        // Append the elements to the "dataDisplay" div
        tableRow.appendChild(nameElement);
        tableRow.appendChild(titleElement);
        tableRow.appendChild(bodyElement);
        dataDisplay.appendChild(tableRow);
    }
})
.catch(error => console.error(error));