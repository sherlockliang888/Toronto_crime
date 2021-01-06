<h2> Toronto_crime </h2>
<p> In progress... Currently building a database with MySQL </p> <br>
<p> Database normalization, DDL skills, creating BCNF schemas. </p> 
<h4> Entity Relationship Diagram Crime.jpg </h4>
<p> 
  New data tables are creating that satisfy BCNF. 
  <ol>
  <li>First Normal Form
    <ul>
      <li>All the attributes are single-valued (atomic).</li>
      <li>All the columns have unique names.</li>
      <li>The order in which data is stored does not matter.</li>
    </ul>
    </li>
  <li>Second Normal Form
    <ul>
      <li>It is in the 1st normal form.</li>
      <li>It does not have any partial dependency.</li>
    </ul>
  </li>           
  <li>Third Normal Form
    <ul>
      <li>It satisfies 2nd normal form.</li>
      <li>It does not have any transitive dependency.</li>
    </ul>
  </li>
  <li>BCNF: Boyce and Codd Normal Form
    <ul>
      <li>It satisfies 3rd normal form.</li>
      <li>For every dependency X->Y, X cannot be a non-prime attribute if Y is prime attribute (i.e. X should be a super key).</li>
    </ul>
  </li>
</ol>

<p> The final Tableau dashboards are available. To view the final view, check out <i> Final visualization.md </i>. </p>
Acknowledgement: 
Data downloaded <a href = "https://data.torontopolice.on.ca/datasets/mci-2014-to-2019/data"> here</a>.
By accessing these datasets, the user agrees to full acknowledgement of the <a href = "https://www.ontario.ca/page/open-government-licence-ontario"> Open Government Licence - Ontario</a>.
