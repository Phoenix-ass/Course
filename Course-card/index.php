<?php
// Database connection
$servername = "localhost:3306";
$username = "root";
$password = "";
$dbname = "final_1";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch data from the 'courses' table
$sql = "SELECT * FROM courses";
$result = $conn->query($sql);
if (!$result) {
    die("Error fetching courses: " . $conn->error);
}

// Query for instructors
$instructors_query = "SELECT names,pictures,expertise FROM instructors";
$instructors_result = $conn->query($instructors_query);
if (!$instructors_result) {
    die("Error fetching instructors: " . $conn->error);
}

$sql = "SELECT content, content2,author FROM reviews"; // Replace with your actual query
$reviews_result = $conn->query($sql);

if (!$reviews_result) {
    die("Error fetching reviews: " . $conn->error);
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Courses</title>
    <link rel="stylesheet" href="index1.css">
</head>

<body>
    <div class="container">
        <h1 class="course-heading">Explore Our Courses</h1>
        <br>
        <br>
        <div class="course-cards">
            <?php if ($result->num_rows > 0) : ?>
                <?php while ($row = $result->fetch_assoc()) : ?>
                    <div class="course-card">
                        <h2 class="dynamic-title"><?= htmlspecialchars($row['title']); ?></h2>

                        <img src="<?= htmlspecialchars($row['image']); ?>" alt="<?= htmlspecialchars($row['title']); ?>" class="course-image">
                        <p><strong>Experience:</strong> <?= htmlspecialchars($row['Exp']); ?></p>
                        <p><?= htmlspecialchars($row['description']); ?></p>
                        <p><?= htmlspecialchars($row['description1']); ?></p>
                        <a href="<?= htmlspecialchars($row['page_link']); ?>" class="learn-more-button">Learn More</a>
                    </div>
                <?php endwhile; ?>
            <?php else : ?>
                <p>No courses available.</p>
            <?php endif; ?>
        </div>
    </div>

    <section id="instructors" class="bg-light py-5">
        <div class="container">
            <h2 class="text-center mb-4">Meet Your Instructors</h2>
            <div class="row">
                <?php if ($instructors_result->num_rows > 0) : ?>
                    <?php while ($instructors = $instructors_result->fetch_assoc()) : ?>
                        <div class="col-md-4 text-center">
                            <img src="<?= htmlspecialchars($instructors['pictures']); ?>">
                            <h5><?= htmlspecialchars($instructors['names']); ?></h5>

                            <p><?= htmlspecialchars($instructors['expertise']); ?></p>
                        </div>
                    <?php endwhile; ?>
                <?php else : ?>
                    <p class="text-center">No instructors available.</p>
                <?php endif; ?>
            </div>
        </div>
    </section>

    <section id="Reviews" class="py-5">
        <div class="container" style="background-color: cadetblue;">
            <h2 class="text-center mb-4"> Our Students Say</h2>
            <div class="row">
                <?php if ($reviews_result->num_rows > 0) : ?>
                    <?php while ($review = $reviews_result->fetch_assoc()) : ?>
                        <div class="col-md-4">
                            <blockquote class="blockquote">
                                <p>"<?= htmlspecialchars($review['content']); ?>"</p>
                                <p>"<?= htmlspecialchars($review['content2']); ?>"</p>
                                <footer class="blockquote-footer" style="color: green;"><?= htmlspecialchars($review['author']); ?></footer>
                            </blockquote>
                        </div>
                    <?php endwhile; ?>
                <?php else : ?>
                    <p class="text-center">No reviews available.</p>
                <?php endif; ?>
            </div>
        </div>
    </section>

    <br>
    <br>
    <section id="contact">
        <div class="contact-container" style="background-color: cadetblue;">
            <h2>Need Assistance? Contact Us!</h2>
            <button class="contact-btn" onclick="openContactForm()">Contact Us Now</button>
            <div id="contact-popup" class="contact-popup">
                <div class="popup-content">
                    <span class="close-btn" onclick="closeContactForm()">&times;</span>
                    <h3>Get in Touch</h3>
                    <form>
                        <input type="text" placeholder="Your Name" class="form-control" required>
                        <input type="email" placeholder="Your Email" class="form-control" required>
                        <textarea placeholder="Your Message" class="form-control" rows="4" required></textarea>
                        <button type="submit" class="submit-btn">Send Message</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <script>
        function openContactForm() {
            document.getElementById('contact-popup').style.display = 'flex';
        }

        function closeContactForm() {
            document.getElementById('contact-popup').style.display = 'none';
        }
    </script>

</body>

</html>

<?php $conn->close(); ?>