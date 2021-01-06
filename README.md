<h2> Toronto_crime </h2>
<p> In progress... Currently building a database with MySQL </p> <br>
<p> Database normalization, DDL skills, creating BCNF schemas. </p> 

<h4> data_dictionary.csv </h4> 
<p> Data column names definition. </p>

<h4> Toronto crime data clean up.ipynb </h4>
<p> 
  Jupyter notebook written in Python that filters out unwanted rows and duplicates and stores the data to a new csv file.  
 </p>

<h4> Creating database.ipynb </h4>
<p> 
  Jupyter notebook written in Python that split the data into many smaller tables, creating a relational database. 
 </p>

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

<h4> toronto crime database </h4>
<p> A folder containing the splitted tables generated above. </p> 

<h4> Final visualization.md</h4>
<p> The final Tableau dashboards are available. To view the final view, check out <i> Final visualization.md </i>. 
Or check out the following links:  <br> 
  
<a href="https://public.tableau.com/profile/fengshou.liang#!/vizhome/toronto_crime/Dashboard1">Dashboard 1</a>
<br>
<a href="https://public.tableau.com/profile/fengshou.liang#!/vizhome/toronto_crime/Dashboard2">Dashboard 2</a>
<br>
<a href="https://public.tableau.com/profile/fengshou.liang#!/vizhome/toronto_crime/Dashboard3">Dashboard 3</a>

</p>

<h4> Acknowledgement</h4>
Data downloaded<a href = "https://data.torontopolice.on.ca/datasets/mci-2014-to-2019/data"> here</a>.
By accessing these datasets, the user agrees to full acknowledgement of the <a href = "https://www.ontario.ca/page/open-government-licence-ontario"> Open Government Licence - Ontario</a>.
