<h2> Toronto Crime </h2>
<p> In progress... Currently writing the final report. </p> <br>
<p> Canada has always been known as one of the safest countries in the world, yet when I began my university study in Toronto in 2017, I have heard more crime news since then. By the end of 2020, I moved a new apartment which was located near the Toronto policy headquarter, and ever since then, I heard more and more police sirens. At that point, I started wondering if Toronto was safe to live and if the neighborhood I lived in was secure enough. Thus, I started working on this project and trying to learn more about the crime in Toronto by analyzing the data provided by the Toronto police from 2014 to 2019. </p>
<p>
The report is divided into three sections. The first section is designed for police divisions in Toronto to understand their performance over time from 2014 to 2019, while the second part is made for civilians to understand their neighborhood of interest. The third part is created for both groups to explore and discover interesting aspect of police divisions and neighborhood. </p>


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

<h4> MySQL code and outcome.md </h4>
<p> Answering questions with MySQL.

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
