<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  
  <link rel="stylesheet" href="./morris_files/morris.css">

  <script src="./morris_files/jquery.min.js.download"></script>
  <script src="./morris_files/raphael-min.js.download"></script>
  <script src="./morris_files/morris.js.download"></script>


</head>

<body style="">
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "iplus_v1";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT * FROM variables where username='mohammed'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        //echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
        echo "<h1>UserName: ".$row["username"]."</h1>";
        $data = $row["var1"].','.$row["var2"].','.$row["var3"].','.$row["var4"].','.$row["var5"];
     }
} else {
    echo "0 results";
}
//$conn->close();
?>
  <div style="border: 2px solid black; float: left; padding: 30px">
    <div id="barchart1" style="width:500px; height: 250px;"></div>
  </div>
               
	<script>
   data = [<?php echo $data ?>];//data=[29,89,67]; this most come before the js reference
   //js starts here you can take all the js and put in a separate file. The javascript uses array
   $(function() {
        new Morris.Bar({
        element: 'barchart1',
        data: [{
            y: 'var1',
            a: data[0],
            b: 90
        }, {
            y: 'var2',
            a: data[1],
            b: 65
        }, {
            y: 'var3',
            a: data[2],
            b: 40
        }, {
            y: 'var4',
            a: data[3],
            b: 65
        }, {
            y: 'var5',//should not be morethan 9 characters
            a: data[4],
            b: 65
        }],
        xkey: 'y',
        ykeys: ['a', 'b'],
        labels: ['Variable A', 'Com B'],
        hideHover: 'auto',
        resize: true,
        barColors: [
        '#FF6600', // color style for A
        '#000066', // color style for B
    ],
    });


});
 
  </script>
</body>
</html>