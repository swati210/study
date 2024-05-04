<!-- Button trigger modal -->
<button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Enquiry
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Enquiry</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="saveEnq.jsp" method="post">
      <div class="modal-body">
        <div class="mb-3">
    <label for="name" class="form-label">Name</label>
    <input type="text" required name="name" class="form-control" id="name" />
  </div>
  <div class="mb-3">
    <label for="email" class="form-label">Email address</label>
    <input type="email" required name="email" class="form-control" id="email" >
  </div>
  <div class="mb-3">
    <label for="mobno" class="form-label">Mobile Number</label>
    <input type="text" name="mobno" class="form-control" id="mobno" >
  </div>
  <div class="mb-3">
    <label for="address" class="form-label">Message</label>
    <textarea name="message" class="form-control" id="address" rows="6" ></textarea>
  </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-info" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-warning">Save changes</button>
      </div>
      </form>
    </div>
  </div>
</div>