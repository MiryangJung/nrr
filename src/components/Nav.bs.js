// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var React = require("react");
var Link = require("next/link").default;

function Nav(Props) {
  return React.createElement("nav", undefined, React.createElement("ul", undefined, React.createElement("b", undefined, "unstored w/ Query.fetchPromised"), React.createElement("li", undefined, React.createElement(Link, {
                          children: "getServerSideProps",
                          href: "/"
                        })), React.createElement("li", undefined, React.createElement(Link, {
                          children: "getStaticProps",
                          href: "/static"
                        })), React.createElement("b", undefined, "WIP : stored w/ data-driven-dependencies"), React.createElement("li", undefined, React.createElement(Link, {
                          children: "getServerSideProps",
                          href: "/ddp-ssr"
                        }))));
}

var make = Nav;

exports.make = make;
/* react Not a pure module */
