// Chart dimensions
const width = 600;
const radius = width / 2;

// Basic data structure
let data = {
  name: "Root",
  children: [
    { name: "Category 1", children: [{ name: "Subcategory 1.1" }] },
    { name: "Category 2", children: [{ name: "Subcategory 2.1" }] }
  ]
};

// Create the SVG container for the sunburst chart
const svg = d3.select("#chart")
  .append("svg")
  .attr("width", width)
  .attr("height", width)
  .append("g")
  .attr("transform", `translate(${radius},${radius})`);

// Create partition layout
const partition = d3.partition()
  .size([2 * Math.PI, radius]);

// Create arc generator
const arc = d3.arc()
  .startAngle(d => d.x0)
  .endAngle(d => d.x1)
  .innerRadius(d => d.y0)
  .outerRadius(d => d.y1);

// Function to render the chart
function renderChart() {
  // Clear previous chart elements
  svg.selectAll("path").remove();

  // Create root hierarchy
  const root = d3.hierarchy(data)
    .sum(d => d.children ? 0 : 1);

  // Apply partition layout to the data
  partition(root);

  // Draw arcs (sunburst segments)
  svg.selectAll("path")
    .data(root.descendants())
    .enter()
    .append("path")
    .attr("d", arc)
    .attr("fill", d => d.children ? "#69b3a2" : "#ffcc00")
    .on("click", (event, d) => alert(`Clicked: ${d.data.name}`));

  // Add tooltips to display the name
  svg.selectAll("path")
    .append("title")
    .text(d => d.data.name);
}

// Function to add a category
function addCategory() {
  const newCategory = { name: "New Category", children: [] };
  data.children.push(newCategory);
  renderChart();
}

// Initial render
renderChart();
