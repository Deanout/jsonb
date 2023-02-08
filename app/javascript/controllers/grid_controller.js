import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="grid"
export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus!", this.element);
    this.payload = JSON.parse(this.data.get("payload"));
    this.colors = this.payload["colors"];
    this.grid = this.payload["grid"];

    this.canvas = this.element;
    this.ctx = this.canvas.getContext("2d");

    // size in pixels
    this.node_size = 10;

    this.canvas.width = this.grid[0].length * this.node_size;
    this.canvas.height = this.grid.length * this.node_size;

    this.drawGrid();
  }

  drawGrid() {
    for (let i = 0; i < this.grid.length; i++) {
      for (let j = 0; j < this.grid[0].length; j++) {
        // The node is an integer representing the color
        const node = this.grid[i][j];
        let color = this.colors[node];

        this.ctx.fillStyle = color;
        this.ctx.fillRect(
          j * this.node_size,
          i * this.node_size,
          this.node_size,
          this.node_size
        );
      }
    }
  }
}
