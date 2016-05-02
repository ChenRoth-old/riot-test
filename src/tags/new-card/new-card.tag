<new-card>
  <form onsubmit={ create }>
  <div>
    <input type="text" name="name" placeholder="name">
    </div>
    <div>
    <input type="text" name="id" placeholder="id">
</div>
<div>
    <input type="submit">
</div>
  </form>
  <style scoped type="scss">
    :scope {
      display: inline-block;
      min-height: 200px;
      background: green;
    }
  </style>
  <script>
   create(e) {
    let name = e.target.name.value
    let id = e.target.id.value
    let card = {
      name,
      id
    }
    store.dispatch({ type: 'ADD_CARD', card })
    this.update()
  }
  </script>
</new-card>