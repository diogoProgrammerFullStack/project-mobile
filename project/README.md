<h2 align="center">
  <img title="logo-carrefour" src="logo_c4.png"/>
</h2>

</br>
<h1 align="center">QA Super App Automation</h1>
</br>
<p align="center">Repository responsible for e2e mobile tests</p> 
</br>
<h2 align="center">
  <img src="https://img.shields.io/static/v1?label=Carrefour&message=Mobile Automation&color=7159c1&style=for-the-badge&logo=ghost"/>
</h2>
</br>
</br>
<p align="center">
    <a href="#clonning">Clonning Project</a> •
    <a href="#prerequisities">Prerequisites</a> • 
    <a href="#instalation">Instalation</a> • 
    <a href="#running">Running</a> • 
    <a href="#tech">Technologies</a> • 
    <a href="#Author">Author</a>
</p>
</br>

<h1 id="cloning">Clonning Project</h1>

With git installed in the machine, run the command:
```
git clone git@bitbucket.org:carrefour_ecommerce/qa-super-app-automation.git

```

<br>
<h1 id="prerequisities">Prerequisites</h1>

Install one of the Ruby versioners below:

#### RBENV:
```
https://github.com/rbenv/rbenv
```

#### RVM:
```
https://rvm.io/
```

<br>

<h1 id="instalation">Install the ruby</h1>

Now, following the previously installed versioner commands, install ruby ​​version 3.1.4 or higher


<h2>Instalation</h2>

Installing the bundler

```
$ gem install bundler
```

In the carrefour-android folder run the command:

```
$ bundle install
```


<br>

<h1 id="running">Running the tests</h1>
Test execution example:

```
cucumber -t @regressivo_all AMBIENTE="galaxyNote10"
```
</br>

<h1 id="tech">🛠 Technologies</h1>
The following tools were used in building the project:

- [Ruby](https://www.ruby-lang.org/en/)
- [Rspec](https://rspec.info/)
- [Appium](https://appium.io/docs/en/2.0/)
- [Cucumber](https://cucumber.io/)

</br>

<h1 id="Author">👨‍💻 Author</h1>
- Diogo De Oliveira Julião
