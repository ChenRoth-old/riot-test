<card>
  <div class="details">
    <h3>{ title }</h3>
    <p>{ name }</p>
    <p>{ id }</p>
    </div>
  <div class="actions">
    <button onclick={ remove }>&times;</button>
  </div>

  <style scoped type="scss">
    :scope {
      display: inline-block;
      border: 2px black solid;
      min-width: 200px;
      background: #eee;
      padding: 10px;

    }
    button {
      background: #fff;
      border: 1px solid #888;
      &:active {
        background: #888;
        border: 1px solid black;
      }
    }
  </style>
  <script>
    remove(e) {
      store.dispatch({ type: 'REMOVE_CARD', card: e.item})
      // this.trigger('remove', e.item)
    }
    this.title = opts.title
    this.name = opts.name
    this.id = opts.id
  </script>
</card>