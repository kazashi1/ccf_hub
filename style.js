document.addEventListener("DOMContentLoaded", function () {
    // Check if msg is set in URL
    const urlParams = new URLSearchParams(window.location.search);
    const msg = urlParams.get("msg");

    if (msg === "added") {
        Swal.fire({
            title: "Success!",
            text: "New student has been added successfully.",
            icon: "success",
            confirmButtonColor: "#3085d6"
        });
    }

    if (msg === "updated") {
        Swal.fire({
            title: "Updated!",
            text: "Record updated successfully.",
            icon: "success",
            confirmButtonColor: "#3085d6"
        });
    }
});

document.addEventListener("DOMContentLoaded", function () {
    const deleteButtons = document.querySelectorAll(".delete-btn");

    deleteButtons.forEach(button => {
        button.addEventListener("click", function (e) {
            e.preventDefault();
            const studentId = this.getAttribute("data-id");

            Swal.fire({
                title: "Are you sure?",
                text: "This record will be permanently deleted!",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#d33",
                cancelButtonColor: "#3085d6",
                confirmButtonText: "Yes, delete it!"
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = "delete.php?id=" + studentId;
                }
            });
        });
    });
});

document.addEventListener("DOMContentLoaded", function () {
    document.querySelectorAll(".inBtn").forEach(function (button) {
        button.addEventListener("click", function (e) {
            e.preventDefault();
            let studentId = this.getAttribute("data-id");

            Swal.fire({
                title: "Mark this student as Present?",
                text: "This will add them to the Present list.",
                icon: "question",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "Yes, Mark In"
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = "in.php?id=" + studentId;
                }
            });
        });
    });
})