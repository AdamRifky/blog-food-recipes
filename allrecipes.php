<?php
include "database.php";

$query = "SELECT title, image_url, category_id, link FROM articles";
$result = $db->query($query);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>All Recipes - Jelajah Rasa</title>
    <link href="src/output.css" rel="stylesheet" />
</head>

<body>
    <!-- Navbar -->
    <?php include "navbar.html"; ?>

    <!-- Dropdown -->
    <main>
        <div class="w-8/12 mx-auto">
            <div class="flex flex-col place-items-center">
                <div class="flex items-center">
                    <h1 class="text-4xl mt-3 font-extrabold text-orange-500">ALL RECIPES</h1>
                </div>
            </div>

            <div class="flex flex-row gap-20 mt-8 mb-2">
                <div class="relative select-none flex-1" id="dropdownButton1">
                    <div onclick="toggleDropdown1()" class="border-solid border-orange-400 border-2 px-5 py-2 rounded cursor-pointer flex justify-between w-full shadow-sm">
                        BY CATEGORY
                        <img src="image/arrowdown.svg" alt="" width="10">
                    </div>
                    <div class="rounded border-2 border-orange-400 absolute top-10 w-full shadow-md hidden z-10 bg-white font-semibold" id="dropdown1">
                        <div class="cursor-pointer hover:bg-orange-500 p-4">VEGETARIAN</div>
                        <div class="cursor-pointer hover:bg-orange-500 p-4">SOUPS</div>
                        <div class="cursor-pointer hover:bg-orange-500 p-4">SEAFOOD</div>
                        <div class="cursor-pointer hover:bg-orange-500 p-4">PASTA</div>
                        <div class="cursor-pointer hover:bg-orange-500 p-4">MEAT</div>
                        <div class="cursor-pointer hover:bg-orange-500 p-4">BURGER</div>
                        <div class="cursor-pointer hover:bg-orange-500 p-4">EGG</div>
                        <div class="cursor-pointer hover:bg-orange-500 p-4">SATAY</div>
                        <div class="cursor-pointer hover:bg-orange-500 p-4">RICE</div>
                    </div>
                </div>

                <div class="relative select-none flex-1" id="dropdownButton2">
                    <div onclick="toggleDropdown2()" class="border-solid border-orange-400 border-2 px-5 py-2 rounded cursor-pointer flex justify-between w-full shadow-sm">
                        BY COURSE
                        <img src="image/arrowdown.svg" alt="" width="10">
                    </div>
                    <div class="rounded border-2 border-orange-400 absolute top-10 w-full shadow-md hidden z-10 bg-white font-semibold" id="dropdown2">
                        <div class="cursor-pointer hover:bg-orange-500 p-4">APPETIZER</div>
                        <div class="cursor-pointer hover:bg-orange-500 p-4">MAIN COURSE</div>
                        <div class="cursor-pointer hover:bg-orange-500 p-4">DESSERT</div>
                    </div>
                </div>

                <div class="relative select-none flex-1" id="dropdownButton3">
                    <div onclick="toggleDropdown3()" class="border-solid border-orange-400 border-2 px-5 py-2 rounded cursor-pointer flex justify-between w-full shadow-sm">
                        BY SORTING
                        <img src="image/arrowdown.svg" alt="" width="10">
                    </div>
                    <div class="rounded border-2 border-orange-400 absolute top-10 w-full shadow-md hidden z-10 bg-white font-semibold" id="dropdown3">
                        <div class="cursor-pointer hover:bg-orange-500 p-4">TITLE (A-Z)</div>
                        <div class="cursor-pointer hover:bg-orange-500 p-4">TITLE (Z-A)</div>
                        <div class="cursor-pointer hover:bg-orange-500 p-4">DATE (NEWEST)</div>
                        <div class="cursor-pointer hover:bg-orange-500 p-4">DATE (OLDEST)</div>
                    </div>
                </div>
            </div>

            <script>
                function toggleDropdown1() {
                    let dropdown1 = document.getElementById('dropdown1');
                    let dropdown2 = document.getElementById('dropdown2');
                    let dropdown3 = document.getElementById('dropdown3');

                    if (dropdown1.classList.contains('hidden')) {
                        dropdown1.classList.remove('hidden');
                        dropdown2.classList.add('hidden');
                        dropdown3.classList.add('hidden');
                    } else {
                        dropdown1.classList.add('hidden');
                    }
                }

                function toggleDropdown2() {
                    let dropdown1 = document.getElementById('dropdown1');
                    let dropdown2 = document.getElementById('dropdown2');
                    let dropdown3 = document.getElementById('dropdown3');

                    if (dropdown2.classList.contains('hidden')) {
                        dropdown2.classList.remove('hidden');
                        dropdown1.classList.add('hidden');
                        dropdown3.classList.add('hidden');
                    } else {
                        dropdown2.classList.add('hidden');
                    }
                }

                function toggleDropdown3() {
                    let dropdown1 = document.getElementById('dropdown1');
                    let dropdown2 = document.getElementById('dropdown2');
                    let dropdown3 = document.getElementById('dropdown3');

                    if (dropdown3.classList.contains('hidden')) {
                        dropdown3.classList.remove('hidden');
                        dropdown1.classList.add('hidden');
                        dropdown2.classList.add('hidden');
                    } else {
                        dropdown3.classList.add('hidden');
                    }
                }
            </script>


            <!-- 4 Card -->
            <div class="grid grid-cols-4 gap-5 py-5">
                <?php
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                ?>
                        <a href="<?php echo $row['link']; ?>">
                            <div class="rounded-lg relative flex flex-col items-center group">
                                <img src="<?php echo $row['image_url']; ?>" alt="<?php echo $row['category_id']; ?>" class="w-80 h-56 duration-300 group-hover:scale-105" />
                                <span class="text-xl font-medium text-center group-hover:text-orange-500">
                                    <?php echo $row['title']; ?>
                                </span>
                            </div>
                        </a>
                <?php
                    }
                } else {
                    echo "<p>No recipes found.</p>";
                }
                ?>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <?php include "footer.html"; ?>
</body>

</html>
<?php
$db->close();
?>