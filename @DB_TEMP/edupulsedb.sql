-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2024 at 09:22 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;

--
-- Database: `edupulsedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
    `admin_id` int(11) NOT NULL,
    `full_name` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL,
    `username` varchar(255) NOT NULL,
    `password` varchar(255) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO
    `admin` (
        `admin_id`,
        `full_name`,
        `email`,
        `username`,
        `password`
    )
VALUES (
        56125,
        'System Admin',
        'admin@edupulse.com',
        'admin',
        '$2y$10$F8TENHrhK0qrn3waIbxuWOdnhF6AyqUEzkdUZXKz1CJLREXZr8uIK'
    );

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
    `certificate_id` int(11) NOT NULL,
    `course_id` int(11) NOT NULL,
    `student_id` int(11) NOT NULL,
    `issue_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `certificate`
--

INSERT INTO
    `certificate` (
        `certificate_id`,
        `course_id`,
        `student_id`,
        `issue_date`
    )
VALUES (134536, 1, 1, '2024-02-03'),
    (134537, 19, 1, '2024-02-03'),
    (134538, 19, 2, '2024-02-03');

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE `chapter` (
    `chapter_id` int(11) NOT NULL,
    `course_id` int(11) NOT NULL,
    `title` varchar(1023) NOT NULL,
    `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `chapter`
--

INSERT INTO
    `chapter` (
        `chapter_id`,
        `course_id`,
        `title`,
        `created_at`
    )
VALUES (
        1,
        1,
        'Chapter-1',
        '2024-01-15'
    ),
    (
        2,
        1,
        'Chapter-2',
        '2024-01-15'
    ),
    (
        3,
        1,
        'Chapter-3',
        '2024-01-15'
    ),
    (
        4,
        1,
        'Chapter-4',
        '2024-01-15'
    ),
    (
        9,
        19,
        'Chapter-1',
        '2024-02-03'
    ),
    (
        10,
        19,
        'Chapter-2',
        '2024-02-03'
    ),
    (
        12,
        19,
        'Chapter-3',
        '2024-02-03'
    );

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
    `content_id` int(11) NOT NULL,
    `topic_id` int(11) NOT NULL,
    `chapter_id` int(11) NOT NULL,
    `course_id` int(11) NOT NULL,
    `data` text NOT NULL,
    `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO
    `content` (
        `content_id`,
        `topic_id`,
        `chapter_id`,
        `course_id`,
        `data`,
        `created_at`
    )
VALUES (
        61,
        10,
        9,
        19,
        '<h2 style=\"box-sizing: inherit; font-size: 32px; font-family: \" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" 10px;\"=\"\"><font color=\"#008000\">Comments in PHP</font></h2><div>A comment in PHP code is a line that is not executed as a part of the program. Its only purpose is to be read by someone who is looking at the code.</div><div>Comments can be used to:</div><ul style=\"box-sizing: inherit; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px;\"><li style=\"box-sizing: inherit;\">Let others understand your code</li><li style=\"box-sizing: inherit;\">Remind yourself of what you did - Most programmers have experienced coming back to their own work a year or two later and having to re-figure out what they did. Comments can remind you of what you were thinking when you wrote the code</li><li style=\"box-sizing: inherit;\">Leave out some parts of your code</li></ul><div>PHP supports several ways of commenting:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: \" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" 10px;\"=\"\">ExampleSyntax for comments in PHP code:</h3><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, \" source=\"\" code=\"\" pro\",=\"\" menlo,=\"\" monaco,=\"\" \"andale=\"\" mono\",=\"\" \"ubuntu=\"\" monospace;=\"\" font-size:=\"\" 1em;=\"\" word-spacing:=\"\" normal;=\"\" word-break:=\"\" overflow-wrap:=\"\" line-height:=\"\" 1.5;=\"\" tab-size:=\"\" 2;=\"\" hyphens:=\"\" none;=\"\" padding:=\"\" margin-top:=\"\" margin-bottom:=\"\" border-left:=\"\" 4px=\"\" solid=\"\" rgb(4,=\"\" 170,=\"\" 109);=\"\" background:=\"\" rgb(255,=\"\" 255,=\"\" 255)=\"\" !important;\"=\"\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, \" source=\"\" code=\"\" pro\",=\"\" menlo,=\"\" monaco,=\"\" \"andale=\"\" mono\",=\"\" \"ubuntu=\"\" monospace;=\"\" font-size:=\"\" 1em;=\"\" color:=\"\" black;=\"\" background:=\"\" none;=\"\" word-spacing:=\"\" normal;=\"\" overflow-wrap:=\"\" line-height:=\"\" 1.5;=\"\" tab-size:=\"\" 2;=\"\" hyphens:=\"\" none;\"=\"\"><span class=\"token comment\" style=\"box-sizing: inherit; color: slategray;\">// This is a single-line comment</span>\r\n\r\n<span class=\"token comment\" style=\"box-sizing: inherit; color: slategray;\"># This is also a single-line comment</span>\r\n\r\n<span class=\"token comment\" style=\"box-sizing: inherit; color: slategray;\">/* This is a\r\nmulti-line comment */</span>\r\n</code></pre><br></div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: \" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\">Single Line Comments</h2><div>Single line comments start with&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, \" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 15.75px;=\"\" color:=\"\" crimson;=\"\" background-color:=\"\" rgba(222,=\"\" 222,=\"\" 0.3);=\"\" padding-left:=\"\" 4px;=\"\" padding-right:=\"\" 4px;\"=\"\">//</code>.</div><div>Any text between&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, \" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 15.75px;=\"\" color:=\"\" crimson;=\"\" background-color:=\"\" rgba(222,=\"\" 222,=\"\" 0.3);=\"\" padding-left:=\"\" 4px;=\"\" padding-right:=\"\" 4px;\"=\"\">//</code>&nbsp;and the end of the line will be ignored (will not be executed).</div><div>You can also use&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, \" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 15.75px;=\"\" color:=\"\" crimson;=\"\" background-color:=\"\" rgba(222,=\"\" 222,=\"\" 0.3);=\"\" padding-left:=\"\" 4px;=\"\" padding-right:=\"\" 4px;\"=\"\">#</code>&nbsp;for single line comments, but in this tutorial we will use&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, \" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 15.75px;=\"\" color:=\"\" crimson;=\"\" background-color:=\"\" rgba(222,=\"\" 222,=\"\" 0.3);=\"\" padding-left:=\"\" 4px;=\"\" padding-right:=\"\" 4px;\"=\"\">//</code>.</div><div>The following examples uses a single-line comment as an explanation:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: \" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" 10px;\"=\"\">Example</h3><div>A comment before the code:</div><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, \" source=\"\" code=\"\" pro\",=\"\" menlo,=\"\" monaco,=\"\" \"andale=\"\" mono\",=\"\" \"ubuntu=\"\" monospace;=\"\" font-size:=\"\" 1em;=\"\" word-spacing:=\"\" normal;=\"\" word-break:=\"\" overflow-wrap:=\"\" line-height:=\"\" 1.5;=\"\" tab-size:=\"\" 2;=\"\" hyphens:=\"\" none;=\"\" padding:=\"\" margin-top:=\"\" margin-bottom:=\"\" border-left:=\"\" 4px=\"\" solid=\"\" rgb(4,=\"\" 170,=\"\" 109);=\"\" background:=\"\" rgb(255,=\"\" 255,=\"\" 255)=\"\" !important;\"=\"\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, \" source=\"\" code=\"\" pro\",=\"\" menlo,=\"\" monaco,=\"\" \"andale=\"\" mono\",=\"\" \"ubuntu=\"\" monospace;=\"\" font-size:=\"\" 1em;=\"\" color:=\"\" black;=\"\" background:=\"\" none;=\"\" word-spacing:=\"\" normal;=\"\" overflow-wrap:=\"\" line-height:=\"\" 1.5;=\"\" tab-size:=\"\" 2;=\"\" hyphens:=\"\" none;\"=\"\"><span class=\"token comment\" style=\"box-sizing: inherit; color: slategray;\">// Outputs a welcome message:</span>\r\n<span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Welcome Home!\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n</code></pre><br></div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: \" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" 10px;\"=\"\">Example</h3><div>A comment at the end of a line:</div><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, \" source=\"\" code=\"\" pro\",=\"\" menlo,=\"\" monaco,=\"\" \"andale=\"\" mono\",=\"\" \"ubuntu=\"\" monospace;=\"\" font-size:=\"\" 1em;=\"\" word-spacing:=\"\" normal;=\"\" word-break:=\"\" overflow-wrap:=\"\" line-height:=\"\" 1.5;=\"\" tab-size:=\"\" 2;=\"\" hyphens:=\"\" none;=\"\" padding:=\"\" margin-top:=\"\" margin-bottom:=\"\" border-left:=\"\" 4px=\"\" solid=\"\" rgb(4,=\"\" 170,=\"\" 109);=\"\" background:=\"\" rgb(255,=\"\" 255,=\"\" 255)=\"\" !important;\"=\"\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, \" source=\"\" code=\"\" pro\",=\"\" menlo,=\"\" monaco,=\"\" \"andale=\"\" mono\",=\"\" \"ubuntu=\"\" monospace;=\"\" font-size:=\"\" 1em;=\"\" color:=\"\" black;=\"\" background:=\"\" none;=\"\" word-spacing:=\"\" normal;=\"\" overflow-wrap:=\"\" line-height:=\"\" 1.5;=\"\" tab-size:=\"\" 2;=\"\" hyphens:=\"\" none;\"=\"\"><span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Welcome Home!\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span> <span class=\"token comment\" style=\"box-sizing: inherit; color: slategray;\">// Outputs a welcome message</span>\r\n</code></pre><br></div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: \" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\">Comments to Ignore Code</h2><div>We can use comments to prevent code lines from being executed:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: \" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" 10px;\"=\"\">Example</h3><div>Do not display a welcome message:</div><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, \" source=\"\" code=\"\" pro\",=\"\" menlo,=\"\" monaco,=\"\" \"andale=\"\" mono\",=\"\" \"ubuntu=\"\" monospace;=\"\" font-size:=\"\" 1em;=\"\" word-spacing:=\"\" normal;=\"\" word-break:=\"\" overflow-wrap:=\"\" line-height:=\"\" 1.5;=\"\" tab-size:=\"\" 2;=\"\" hyphens:=\"\" none;=\"\" padding:=\"\" margin-top:=\"\" margin-bottom:=\"\" border-left:=\"\" 4px=\"\" solid=\"\" rgb(4,=\"\" 170,=\"\" 109);=\"\" background:=\"\" rgb(255,=\"\" 255,=\"\" 255)=\"\" !important;\"=\"\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, \" source=\"\" code=\"\" pro\",=\"\" menlo,=\"\" monaco,=\"\" \"andale=\"\" mono\",=\"\" \"ubuntu=\"\" monospace;=\"\" font-size:=\"\" 1em;=\"\" color:=\"\" black;=\"\" background:=\"\" none;=\"\" word-spacing:=\"\" normal;=\"\" overflow-wrap:=\"\" line-height:=\"\" 1.5;=\"\" tab-size:=\"\" 2;=\"\" hyphens:=\"\" none;\"=\"\"><span class=\"token comment\" style=\"box-sizing: inherit; color: slategray;\">// echo \"Welcome Home!\";</span></code></pre></div>',
        '2024-02-03'
    ),
    (
        62,
        12,
        10,
        19,
        '<div><div>In the following chapters you will learn how to repeat code by using loops in PHP.</div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">PHP Loops</h2><div>Often when you write code, you want the same block of code to run over and over again a certain number of times. So, instead of adding several almost equal code-lines in a script, we can use loops.</div><div>Loops are used to execute the same block of code again and again, as long as a certain condition is true.</div><div>In PHP, we have the following loop types:</div><ul style=\"box-sizing: inherit; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px;\"><li style=\"box-sizing: inherit;\"><code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">while</code>&nbsp;- loops through a block of code as long as the specified condition is true</li><li style=\"box-sizing: inherit;\"><code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">do...while</code>&nbsp;- loops through a block of code once, and then repeats the loop as long as the specified condition is true</li><li style=\"box-sizing: inherit;\"><code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">for</code>&nbsp;- loops through a block of code a specified number of times</li><li style=\"box-sizing: inherit;\"><code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">foreach</code>&nbsp;- loops through a block of code for each element in an array</li></ul><div>The following chapters will explain and give examples of each loop type.</div></div><div><br></div><div><div>he&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 16.8px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">while</code>&nbsp;loop - Loops through a block of code as long as the specified condition is true.</div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">The PHP while Loop</h2><div>The&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">while</code>&nbsp;loop executes a block of code as long as the specified condition is true.</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example<br></h3><div>Print&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">$i</code>&nbsp;as long as&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">$i</code>&nbsp;is less than 6:</div><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">1</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token keyword keyword-while\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">while</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">&lt;</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">6</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">{</span>\r\n  <span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n  <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span><span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">++</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">}</span>\r\n</code></pre><br></div><div class=\"w3-panel w3-note\" style=\"box-sizing: inherit; padding: 16px 32px; margin: 24px -32px; background-color: rgb(255, 255, 204); border-left: none; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px;\"><div><span style=\"box-sizing: inherit; font-weight: bolder;\">Note:</span>&nbsp;remember to increment&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">$i</code>, or else the loop will continue forever.</div></div><div>The&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">while</code>&nbsp;loop does not run a specific number of times, but checks after each iteration if the condition is still true.</div><div>The condition does not have to be a counter, it could be the status of an operation or any condition that evaluates to either true or false.</div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">The break Statement</h2><div>With the&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">break</code>&nbsp;statement we can stop the loop even if the condition is still true:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><div>Stop the loop when&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">$i</code>&nbsp;is 3:</div><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">1</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token keyword keyword-while\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">while</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">&lt;</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">6</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">{</span>\r\n  <span class=\"token keyword keyword-if\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">if</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">==</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">3</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span> <span class=\"token keyword keyword-break\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">break</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n  <span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n  <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span><span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">++</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">}</span>\r\n</code></pre><br></div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><div id=\"midcontentadcontainer\" style=\"box-sizing: inherit; text-align: center; margin-left: -16px; margin-right: -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; overflow: auto;\"><div id=\"adngin-mid_content-0\" style=\"box-sizing: inherit;\"></div></div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">The continue Statement</h2><div>With the&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">continue</code>&nbsp;statement we can stop the current iteration, and continue with the next:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><div>Stop, and jump to the next iteration if&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">$i</code>&nbsp;is 3:</div><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">0</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token keyword keyword-while\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">while</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">&lt;</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">6</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">{</span>\r\n  <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span><span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">++</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n  <span class=\"token keyword keyword-if\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">if</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">==</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">3</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span> <span class=\"token keyword keyword-continue\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">continue</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n  <span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">}</span>\r\n</code></pre><br></div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">Alternative Syntax</h2><div>The&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">while</code>&nbsp;loop syntax can also be written with the&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">endwhile</code>&nbsp;statement like this</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><div>Print&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">$i</code>&nbsp;as long as&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">$i</code>&nbsp;is less than 6:</div><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">1</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token keyword keyword-while\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">while</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">&lt;</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">6</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">:</span>\r\n  <span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n  <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span><span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">++</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token keyword keyword-endwhile\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">endwhile</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n</code></pre><br></div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">Step 10</h2><div>If you want the&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">while</code>&nbsp;loop count to 100, but only by each 10, you can increase the counter by 10 instead 1 in each iteration:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><div>Count to 100 by tens:</div><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">0</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token keyword keyword-while\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">while</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">&lt;</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">100</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">{</span>\r\n  <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span><span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">+=</span><span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">10</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n  <span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"&lt;br&gt;\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">}</span></code></pre></div></div>',
        '2024-02-03'
    );

INSERT INTO
    `content` (
        `content_id`,
        `topic_id`,
        `chapter_id`,
        `course_id`,
        `data`,
        `created_at`
    )
VALUES (
        63,
        11,
        9,
        19,
        '<div>Variables are \"<span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#008000\">containers</font></span>\" for storing information.</div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">Creating (Declaring) PHP Variables</h2><div>In PHP, a variable starts with the&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">$</code>&nbsp;sign, followed by the name of the variable:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$x</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">5</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$y</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"John\"</span>\r\n</code></pre><br></div><div>In the example above, the variable&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">$x</code>&nbsp;will hold the value&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">5</code>, and the variable&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">$y</code>&nbsp;will hold the value&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">\"John\"</code>.</div><div><span style=\"box-sizing: inherit; font-weight: bolder;\">Note:</span>&nbsp;When you assign a text value to a variable, put quotes around the value.</div><div><span style=\"box-sizing: inherit; font-weight: bolder;\">Note:</span>&nbsp;Unlike other programming languages, PHP has no command for declaring a variable. It is created the moment you first assign a value to it.</div><div class=\"w3-panel w3-note\" style=\"box-sizing: inherit; padding: 16px 32px; margin: 24px -32px; background-color: rgb(255, 255, 204); border-left: none; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px;\"><div>Think of variables as containers for storing data.</div></div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">PHP Variables</h2><div>A variable can have a short name (like&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">$x</code>&nbsp;and&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">$y</code>) or a more descriptive name (<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">$age</code>,&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">$carname</code>,&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">$total_volume</code>).</div><div>Rules for PHP variables:</div><ul style=\"box-sizing: inherit; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px;\"><li style=\"box-sizing: inherit;\">A variable starts with the&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">$</code>&nbsp;sign, followed by the name of the variable</li><li style=\"box-sizing: inherit;\">A variable name must start with a letter or the underscore character</li><li style=\"box-sizing: inherit;\">A variable name cannot start with a number</li><li style=\"box-sizing: inherit;\">A variable name can only contain alpha-numeric characters and underscores (A-z, 0-9, and _ )</li><li style=\"box-sizing: inherit;\">Variable names are case-sensitive (<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">$age</code>&nbsp;and&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">$AGE</code>&nbsp;are two different variables)</li></ul><div class=\"w3-panel w3-note\" style=\"box-sizing: inherit; padding: 16px 32px; margin: 24px -32px; background-color: rgb(255, 255, 204); border-left: none; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px;\"><div>Remember that PHP variable names are case-sensitive!</div></div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">Output Variables</h2><div>The PHP&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">echo</code>&nbsp;statement is often used to output data to the screen.</div><div>The following example will show how to output text and a variable:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$txt</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"W3Schools.com\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"I love <span class=\"token interpolation\" style=\"box-sizing: inherit;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$txt</span></span>!\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n</code></pre><br></div><div>The following example will produce the same output as the example above:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$txt</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"W3Schools.com\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"I love \"</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">.</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$txt</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">.</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"!\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n</code></pre><br></div><div>The following example will output the sum of two variables:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$x</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">5</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$y</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">4</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$x</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">+</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$y</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n</code></pre><br></div><div><span style=\"box-sizing: inherit; font-weight: bolder;\">Note:</span>&nbsp;You will learn more about the&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">echo</code>&nbsp;statement and how to output data to the screen in the&nbsp;<a href=\"https://www.w3schools.com/php/php_echo_print.asp\" style=\"box-sizing: inherit; background-color: transparent; color: inherit;\">PHP Echo/Print chapter</a>.</div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">PHP is a Loosely Typed Language</h2><div>In the example above, notice that we did not have to tell PHP which data type the variable is.</div><div>PHP automatically associates a data type to the variable, depending on its value. Since the data types are not set in a strict sense, you can do things like adding a string to an integer without causing an error.</div><div>In PHP 7, type declarations were added. This gives an option to specify the data type expected when declaring a function, and by enabling the strict requirement, it will throw a \"Fatal Error\" on a type mismatch.</div><div>You will learn more about&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">strict</code>&nbsp;and&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">non-strict</code>&nbsp;requirements, and data type declarations in the&nbsp;<a href=\"https://www.w3schools.com/php/php_functions.asp\" style=\"box-sizing: inherit; background-color: transparent; color: inherit;\">PHP Functions</a>&nbsp;chapter.</div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">Variable Types</h2><div>PHP has no command for declaring a variable, and the data type depends on the value of the variable.</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$x</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">5</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>      <span class=\"token comment\" style=\"box-sizing: inherit; color: slategray;\">// $x is an integer</span>\r\n<span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$y</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"John\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span> <span class=\"token comment\" style=\"box-sizing: inherit; color: slategray;\">// $y is a string</span>\r\n<span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$x</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$y</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n</code></pre><br></div><div>PHP supports the following data types:</div><ul style=\"box-sizing: inherit; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px;\"><li style=\"box-sizing: inherit;\">String</li><li style=\"box-sizing: inherit;\">Integer</li><li style=\"box-sizing: inherit;\">Float (floating point numbers - also called double)</li><li style=\"box-sizing: inherit;\">Boolean</li><li style=\"box-sizing: inherit;\">Array</li><li style=\"box-sizing: inherit;\">Object</li><li style=\"box-sizing: inherit;\">NULL</li><li style=\"box-sizing: inherit;\">Resource</li></ul><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">Get the Type</h2><div>To get the data type of a variable, use the&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">var_dump()</code>&nbsp;function.</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><div>The&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">var_dump()</code>&nbsp;function returns the data type and the value:</div><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$x</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">5</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">var_dump</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$x</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n</code></pre><br></div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><div>See what&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">var_dump()</code>&nbsp;returns for other data types:</div><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">var_dump</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">5</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">var_dump</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"John\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">var_dump</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">3.14</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">var_dump</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token constant boolean\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">true</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">var_dump</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">[</span><span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">2</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">3</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">56</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">]</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">var_dump</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token constant\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">NULL</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n</code></pre><br></div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">Assign String to a Variable</h2><div>Assigning a string to a variable is done with the variable name followed by an equal sign and the string:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$x</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"John\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$x</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n</code></pre><br></div><div>String variables can be declared either by using double or single quotes, but you should be aware of the differences. Learn more about the differences in the&nbsp;<a href=\"https://www.w3schools.com/php/php_string.asp\" style=\"box-sizing: inherit; background-color: transparent; color: inherit;\">PHP Strings chapter</a>.</div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">Assign Multiple Values</h2><div>You can assign the same value to multiple variables in one line:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><div>All three variables get the value \"Fruit\":</div><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$x</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$y</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$z</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Fruit\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span></code></pre></div>',
        '2024-02-03'
    );

INSERT INTO
    `content` (
        `content_id`,
        `topic_id`,
        `chapter_id`,
        `course_id`,
        `data`,
        `created_at`
    )
VALUES (
        64,
        13,
        10,
        19,
        '<div><div>The real power of PHP comes from its functions.</div><div>PHP has more than 1000 built-in functions, and in addition you can create your own custom functions.</div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">PHP Built-in Functions</h2><div>PHP has over 1000 built-in functions that can be called directly, from within a script, to perform a specific task.</div><div>Please check out our PHP reference for a complete overview of the&nbsp;<a href=\"https://www.w3schools.com/php/php_ref_overview.asp\" style=\"box-sizing: inherit; background-color: transparent; color: inherit;\">PHP built-in functions</a>.</div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">PHP User Defined Functions</h2><div>Besides the built-in PHP functions, it is possible to create your own functions.</div><ul style=\"box-sizing: inherit; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px;\"><li style=\"box-sizing: inherit;\">A function is a block of statements that can be used repeatedly in a program.</li><li style=\"box-sizing: inherit;\">A function will not execute automatically when a page loads.</li><li style=\"box-sizing: inherit;\">A function will be executed by a call to the function.</li></ul><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">Create a Function</h2><div>A user-defined function declaration starts with the keyword&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">function</code>, followed by the name of the function:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example<a class=\"ws-black ws-hover-black spaces-tryit ga-featured\" href=\"https://www.w3schools.com/php/php_server.asp\" title=\"W3Schools Spaces\" target=\"_blank\" style=\"box-sizing: inherit; position: relative; overflow: visible; margin-bottom: 5px; float: right; border-radius: 5px; font-size: 17px; font-family: &quot;Source Sans Pro&quot;, sans-serif; padding: 6px 18px; text-decoration-line: none; background-color: rgb(40, 42, 53) !important; color: white !important;\">Get your own PHP Server</a></h3><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token keyword keyword-function\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">function</span> <span class=\"token function-definition function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">myMessage</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">{</span>\r\n  <span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Hello world!\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">}</span>\r\n</code></pre></div><div class=\"w3-panel w3-note\" style=\"box-sizing: inherit; padding: 16px 32px; margin: 24px -32px; background-color: rgb(255, 255, 204); border-left: none; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px;\"><div><span style=\"box-sizing: inherit; font-weight: bolder;\">Note:</span>&nbsp;A function name must start with a letter or an underscore. Function names are NOT case-sensitive.</div></div><div><span style=\"box-sizing: inherit; font-weight: bolder;\">Tip:</span>&nbsp;Give the function a name that reflects what the function does!</div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">Call a Function</h2><div>To call the function, just write its name followed by parentheses&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">()</code>:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token keyword keyword-function\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">function</span> <span class=\"token function-definition function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">myMessage</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">{</span>\r\n  <span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Hello world!\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">}</span>\r\n\r\n<span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">myMessage</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span></code></pre><a target=\"_blank\" class=\"w3-btn w3-margin-bottom\" href=\"https://www.w3schools.com/php/phptryit.asp?filename=tryphp_function_mymessage\" style=\"box-sizing: inherit; background-color: rgb(76, 175, 80); color: rgb(255, 255, 255); border: none; display: inline-block; padding: 6px 18px; vertical-align: middle; overflow: hidden; text-decoration-line: none; text-align: center; cursor: pointer; text-wrap: nowrap; user-select: none; border-radius: 5px; font-size: 17px; font-family: &quot;Source Sans Pro&quot;, sans-serif; margin-bottom: 16px !important;\">Try it Yourself »</a></div><div>In our example, we create a function named&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">myMessage()</code>.</div><div>The opening curly brace&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">{</code>&nbsp;indicates the beginning of the function code, and the closing curly brace&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">}</code>&nbsp;indicates the end of the function.</div><div>The function outputs \"Hello world!\".</div><div><br></div><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">PHP Function Arguments</h2><div>Information can be passed to functions through arguments. An argument is just like a variable.</div><div>Arguments are specified after the function name, inside the parentheses. You can add as many arguments as you want, just separate them with a comma.</div><div>The following example has a function with one argument&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">($fname)</code>. When the&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">familyName()</code>&nbsp;function is called, we also pass along a name, e.g.&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">(\"Jani\")</code>, and the name is used inside the function, which outputs several different first names, but an equal last name:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token keyword keyword-function\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">function</span> <span class=\"token function-definition function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">familyName</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$fname</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">{</span>\r\n  <span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"<span class=\"token interpolation\" style=\"box-sizing: inherit;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$fname</span></span> Refsnes.&lt;br&gt;\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">}</span>\r\n\r\n<span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">familyName</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Jani\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">familyName</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Hege\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">familyName</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Stale\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">familyName</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Kai Jim\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">familyName</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Borge\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n</code></pre><a target=\"_blank\" class=\"w3-btn w3-margin-bottom\" href=\"https://www.w3schools.com/php/phptryit.asp?filename=tryphp_function2\" style=\"box-sizing: inherit; background-color: rgb(76, 175, 80); color: rgb(255, 255, 255); border: none; display: inline-block; padding: 6px 18px; vertical-align: middle; overflow: hidden; text-decoration-line: none; text-align: center; cursor: pointer; text-wrap: nowrap; user-select: none; border-radius: 5px; font-size: 17px; font-family: &quot;Source Sans Pro&quot;, sans-serif; margin-bottom: 16px !important;\">Try it Yourself »</a></div><div>The following example has a function with two arguments&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">($fname, $year)</code>:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token keyword keyword-function\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">function</span> <span class=\"token function-definition function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">familyName</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$fname</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$year</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">{</span>\r\n  <span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"<span class=\"token interpolation\" style=\"box-sizing: inherit;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$fname</span></span> Refsnes. Born in <span class=\"token interpolation\" style=\"box-sizing: inherit;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$year</span></span> &lt;br&gt;\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">}</span>\r\n\r\n<span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">familyName</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Hege\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"1975\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">familyName</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Stale\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"1978\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">familyName</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Kai Jim\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"1983\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n</code></pre><a target=\"_blank\" class=\"w3-btn w3-margin-bottom\" href=\"https://www.w3schools.com/php/phptryit.asp?filename=tryphp_function3\" style=\"box-sizing: inherit; background-color: rgb(76, 175, 80); color: rgb(255, 255, 255); border: none; display: inline-block; padding: 6px 18px; vertical-align: middle; overflow: hidden; text-decoration-line: none; text-align: center; cursor: pointer; text-wrap: nowrap; user-select: none; border-radius: 5px; font-size: 17px; font-family: &quot;Source Sans Pro&quot;, sans-serif; margin-bottom: 16px !important;\">Try it Yourself »</a></div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">PHP Default Argument Value</h2><div>The following example shows how to use a default parameter. If we call the function&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">setHeight()</code>&nbsp;without arguments it takes the default value as argument:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token keyword keyword-function\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">function</span> <span class=\"token function-definition function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">setHeight</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$minheight</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">50</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">{</span>\r\n  <span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"The height is : <span class=\"token interpolation\" style=\"box-sizing: inherit;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$minheight</span></span> &lt;br&gt;\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">}</span>\r\n\r\n<span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">setHeight</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">350</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">setHeight</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span> <span class=\"token comment\" style=\"box-sizing: inherit; color: slategray;\">// will use the default value of 50</span>\r\n<span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">setHeight</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">135</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">setHeight</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">80</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n</code></pre><a target=\"_blank\" class=\"w3-btn w3-margin-bottom\" href=\"https://www.w3schools.com/php/phptryit.asp?filename=tryphp_function_default_arg\" style=\"box-sizing: inherit; background-color: rgb(76, 175, 80); color: rgb(255, 255, 255); border: none; display: inline-block; padding: 6px 18px; vertical-align: middle; overflow: hidden; text-decoration-line: none; text-align: center; cursor: pointer; text-wrap: nowrap; user-select: none; border-radius: 5px; font-size: 17px; font-family: &quot;Source Sans Pro&quot;, sans-serif; margin-bottom: 16px !important;\">Try it Yourself »</a></div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">PHP Functions - Returning values</h2><div>To let a function return a value, use the&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">return</code>&nbsp;statement:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token keyword keyword-function\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">function</span> <span class=\"token function-definition function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">sum</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$x</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$y</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">{</span>\r\n  <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$z</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$x</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">+</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$y</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n  <span class=\"token keyword keyword-return\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">return</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$z</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">}</span>\r\n\r\n<span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"5 + 10 = \"</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">.</span> <span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">sum</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">5</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">10</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">.</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"&lt;br&gt;\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"7 + 13 = \"</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">.</span> <span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">sum</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">7</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">13</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">.</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"&lt;br&gt;\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"2 + 4 = \"</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">.</span> <span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">sum</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">2</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">4</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n</code></pre><a target=\"_blank\" class=\"w3-btn w3-margin-bottom\" href=\"https://www.w3schools.com/php/phptryit.asp?filename=tryphp_function_return\" style=\"box-sizing: inherit; background-color: rgb(76, 175, 80); color: rgb(255, 255, 255); border: none; display: inline-block; padding: 6px 18px; vertical-align: middle; overflow: hidden; text-decoration-line: none; text-align: center; cursor: pointer; text-wrap: nowrap; user-select: none; border-radius: 5px; font-size: 17px; font-family: &quot;Source Sans Pro&quot;, sans-serif; margin-bottom: 16px !important;\">Try it Yourself »</a></div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">Passing Arguments by Reference</h2><div>In PHP, arguments are usually passed by value, which means that a copy of the value is used in the function and the variable that was passed into the function cannot be changed.</div><div>When a function argument is passed by reference, changes to the argument also change the variable that was passed in. To turn a function argument into a reference, the&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">&amp;</code>&nbsp;operator is used:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><div>Use a pass-by-reference argument to update a variable:</div><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token keyword keyword-function\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">function</span> <span class=\"token function-definition function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">add_five</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">&amp;</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$value</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">{</span>\r\n  <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$value</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">+=</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">5</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">}</span>\r\n\r\n<span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$num</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">2</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">add_five</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$num</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$num</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n</code></pre><a target=\"_blank\" class=\"w3-btn w3-margin-bottom\" href=\"https://www.w3schools.com/php/phptryit.asp?filename=tryphp_func_pass_ref\" style=\"box-sizing: inherit; background-color: rgb(76, 175, 80); color: rgb(255, 255, 255); border: none; display: inline-block; padding: 6px 18px; vertical-align: middle; overflow: hidden; text-decoration-line: none; text-align: center; cursor: pointer; text-wrap: nowrap; user-select: none; border-radius: 5px; font-size: 17px; font-family: &quot;Source Sans Pro&quot;, sans-serif; margin-bottom: 16px !important;\">Try it Yourself »</a></div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">Variable Number of Arguments</h2><div>By using the&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">...</code>&nbsp;operator in front of the function parameter, the function accepts an unknown number of arguments. This is also called a variadic function.</div><div>The variadic function argument becomes an array.</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><div>A function that do not know how many arguments it will get:</div><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token keyword keyword-function\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">function</span> <span class=\"token function-definition function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">sumMyNumbers</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">...</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$x</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">{</span>\r\n  <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$n</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">0</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n  <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$len</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">count</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$x</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n  <span class=\"token keyword keyword-for\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">for</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">0</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">&lt;</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$len</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span><span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">++</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">{</span>\r\n    <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$n</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">+=</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$x</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">[</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">]</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n  <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">}</span>\r\n  <span class=\"token keyword keyword-return\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">return</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$n</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">}</span>\r\n\r\n<span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$a</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">sumMyNumbers</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">5</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">2</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">6</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">2</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">7</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">7</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$a</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n</code></pre><a target=\"_blank\" class=\"w3-btn w3-margin-bottom\" href=\"https://www.w3schools.com/php/phptryit.asp?filename=tryphp_function_variadic\" style=\"box-sizing: inherit; background-color: rgb(76, 175, 80); color: rgb(255, 255, 255); border: none; display: inline-block; padding: 6px 18px; vertical-align: middle; overflow: hidden; text-decoration-line: none; text-align: center; cursor: pointer; text-wrap: nowrap; user-select: none; border-radius: 5px; font-size: 17px; font-family: &quot;Source Sans Pro&quot;, sans-serif; margin-bottom: 16px !important;\">Try it Yourself »</a></div><div>You can only have one argument with variable length, and it has to be the last argument.</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><div>The variadic argument must be the last argument:</div><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token keyword keyword-function\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">function</span> <span class=\"token function-definition function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">myFamily</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$lastname</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">...</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$firstname</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">{</span>\r\n  txt <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n  <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$len</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">count</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$firstname</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n  <span class=\"token keyword keyword-for\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">for</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">0</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">&lt;</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$len</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span><span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">++</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">{</span>\r\n    <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$txt</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$txt</span><span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">.</span><span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Hi, <span class=\"token interpolation\" style=\"box-sizing: inherit;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$firstname</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">[</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">]</span></span> <span class=\"token interpolation\" style=\"box-sizing: inherit;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$lastname</span></span>.&lt;br&gt;\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n  <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">}</span>\r\n  <span class=\"token keyword keyword-return\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">return</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$txt</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">}</span>\r\n\r\n<span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$a</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">myFamily</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Doe\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Jane\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"John\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Joey\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$a</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n</code></pre><a target=\"_blank\" class=\"w3-btn w3-margin-bottom\" href=\"https://www.w3schools.com/php/phptryit.asp?filename=tryphp_function_variadic2\" style=\"box-sizing: inherit; background-color: rgb(76, 175, 80); color: rgb(255, 255, 255); border: none; display: inline-block; padding: 6px 18px; vertical-align: middle; overflow: hidden; text-decoration-line: none; text-align: center; cursor: pointer; text-wrap: nowrap; user-select: none; border-radius: 5px; font-size: 17px; font-family: &quot;Source Sans Pro&quot;, sans-serif; margin-bottom: 16px !important;\">Try it Yourself »</a></div><div>If the variadic argument is not the last argument, you will get an error.</div><div class=\"w3-example w3-pale-red\" style=\"box-sizing: inherit; color: rgb(0, 0, 0); background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><div>Having the&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">...</code>&nbsp;operator on the first of two arguments, will raise an error:</div><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token keyword keyword-function\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">function</span> <span class=\"token function-definition function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">myFamily</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">...</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$firstname</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$lastname</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">{</span>\r\n  <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$txt</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n  <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$len</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">count</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$firstname</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n  <span class=\"token keyword keyword-for\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">for</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">0</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">&lt;</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$len</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span> <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$i</span><span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">++</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">{</span>\r\n    <span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$txt</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">',
        '2024-02-03'
    );

INSERT INTO
    `content` (
        `content_id`,
        `topic_id`,
        `chapter_id`,
        `course_id`,
        `data`,
        `created_at`
    )
VALUES (
        65,
        14,
        12,
        19,
        '<div>An array stores multiple values in one single variable:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example<br></h3><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$cars</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token keyword keyword-array\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">array</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Volvo\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"BMW\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Toyota\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n</code></pre><a target=\"_blank\" class=\"w3-btn w3-margin-bottom\" href=\"https://www.w3schools.com/php/phptryit.asp?filename=tryphp_arrays\" style=\"box-sizing: inherit; background-color: rgb(76, 175, 80); color: rgb(255, 255, 255); border: none; display: inline-block; padding: 6px 18px; vertical-align: middle; overflow: hidden; text-decoration-line: none; text-align: center; cursor: pointer; text-wrap: nowrap; user-select: none; border-radius: 5px; font-size: 17px; font-family: &quot;Source Sans Pro&quot;, sans-serif; margin-bottom: 16px !important;\">Try it Yourself »</a></div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">What is an Array?</h2><div>An array is a special variable that can hold many values under a single name, and you can access the values by referring to an index number or name.</div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">PHP Array Types</h2><div>In PHP, there are three types of arrays:</div><ul style=\"box-sizing: inherit; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px;\"><li style=\"box-sizing: inherit;\"><a href=\"https://www.w3schools.com/php/php_arrays_indexed.asp\" style=\"box-sizing: inherit; background-color: transparent; color: inherit;\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Indexed arrays</span></a>&nbsp;- Arrays with a numeric index</li><li style=\"box-sizing: inherit;\"><a href=\"https://www.w3schools.com/php/php_arrays_associative.asp\" style=\"box-sizing: inherit; background-color: transparent; color: inherit;\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Associative arrays</span></a>&nbsp;- Arrays with named keys</li><li style=\"box-sizing: inherit;\"><a href=\"https://www.w3schools.com/php/php_arrays_multidimensional.asp\" style=\"box-sizing: inherit; background-color: transparent; color: inherit;\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Multidimensional arrays</span></a>&nbsp;- Arrays containing one or more arrays</li></ul><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">Working With Arrays</h2><div>In this tutorial you will learn how to work with arrays, including:</div><ul style=\"box-sizing: inherit; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px;\"><li style=\"box-sizing: inherit;\"><a href=\"https://www.w3schools.com/php/php_arrays_create.asp\" style=\"box-sizing: inherit; background-color: transparent; color: inherit;\">Create Arrays</a></li><li style=\"box-sizing: inherit;\"><a href=\"https://www.w3schools.com/php/php_array_access.asp\" style=\"box-sizing: inherit; background-color: transparent; color: inherit;\">Access Arrays</a></li><li style=\"box-sizing: inherit;\"><a href=\"https://www.w3schools.com/php/php_array_update.asp\" style=\"box-sizing: inherit; background-color: transparent; color: inherit;\">Update Arrays</a></li><li style=\"box-sizing: inherit;\"><a href=\"https://www.w3schools.com/php/php_array_remove.asp\" style=\"box-sizing: inherit; background-color: transparent; color: inherit;\">Remove Array Items</a></li><li style=\"box-sizing: inherit;\"><a href=\"https://www.w3schools.com/php/php_array_sort.asp\" style=\"box-sizing: inherit; background-color: transparent; color: inherit;\">Sort Arrays</a></li></ul><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">Array Items</h2><div>Array items can be of any data type.</div><div>The most common are strings and numbers (int, float), but array items can also be objects, functions or even arrays.</div><div>You can have different data types in the same array.</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><div>Array items of four different data types:</div><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$myArr</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token keyword keyword-array\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">array</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Volvo\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token number\" style=\"box-sizing: inherit; color: rgb(153, 0, 85);\">15</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">[</span><span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"apples\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"bananas\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">]</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> myFunction<span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n</code></pre><a target=\"_blank\" class=\"w3-btn w3-margin-bottom\" href=\"https://www.w3schools.com/php/phptryit.asp?filename=tryphp_array_items\" style=\"box-sizing: inherit; background-color: rgb(76, 175, 80); color: rgb(255, 255, 255); border: none; display: inline-block; padding: 6px 18px; vertical-align: middle; overflow: hidden; text-decoration-line: none; text-align: center; cursor: pointer; text-wrap: nowrap; user-select: none; border-radius: 5px; font-size: 17px; font-family: &quot;Source Sans Pro&quot;, sans-serif; margin-bottom: 16px !important;\">Try it Yourself »</a></div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">Array Functions</h2><div>The real strength of PHP arrays are the built-in array functions, like the&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">count()</code>&nbsp;function for counting array items:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(231, 233, 235); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">Example</h3><div>How many items are in the&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, &quot;courier new&quot;, monospace; font-size: 15.75px; color: crimson; background-color: rgba(222, 222, 222, 0.3); padding-left: 4px; padding-right: 4px;\">$cars</code>&nbsp;array:</div><pre class=\"notranslate w3-white language-php\" tabindex=\"0\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; word-spacing: normal; word-break: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none; padding: 1em; margin-top: 1em; margin-bottom: 1em; border-left: 4px solid rgb(4, 170, 109); background: rgb(255, 255, 255) !important;\"><code class=\"language-php\" style=\"box-sizing: inherit; font-family: Consolas, &quot;Source Code Pro&quot;, Menlo, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 1em; color: black; background: none; word-spacing: normal; overflow-wrap: normal; line-height: 1.5; tab-size: 2; hyphens: none;\"><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$cars</span> <span class=\"token operator\" style=\"box-sizing: inherit; color: rgb(154, 110, 58);\">=</span> <span class=\"token keyword keyword-array\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">array</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Volvo\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"BMW\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">,</span> <span class=\"token string double-quoted-string\" style=\"box-sizing: inherit; color: rgb(102, 153, 0);\">\"Toyota\"</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span>\r\n<span class=\"token keyword keyword-echo\" style=\"box-sizing: inherit; color: rgb(0, 119, 170);\">echo</span> <span class=\"token function\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">count</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">(</span><span class=\"token variable\" style=\"box-sizing: inherit; color: rgb(221, 74, 104);\">$cars</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">)</span><span class=\"token punctuation\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">;</span></code></pre></div>',
        '2024-02-03'
    ),
    (
        66,
        15,
        12,
        19,
        '<h1 style=\"box-sizing: inherit; font-size: 42px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\"><span style=\"color: rgb(51, 51, 51); font-size: 1rem;\">From PHP5, you can also write PHP code in an object-oriented style.</span><br></h1><div>Object-Oriented programming is faster and easier to execute.</div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">PHP What is OOP?</h2><div>OOP stands for Object-Oriented Programming.</div><div>Procedural programming is about writing procedures or functions that perform operations on the data, while object-oriented programming is about creating objects that contain both data and functions.</div><div>Object-oriented programming has several advantages over procedural programming:</div><ul style=\"box-sizing: inherit; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px;\"><li style=\"box-sizing: inherit;\">OOP is faster and easier to execute</li><li style=\"box-sizing: inherit;\">OOP provides a clear structure for the programs</li><li style=\"box-sizing: inherit;\">OOP helps to keep the PHP code DRY \"Don\'t Repeat Yourself\", and makes the code easier to maintain, modify and debug</li><li style=\"box-sizing: inherit;\">OOP makes it possible to create full reusable applications with less code and shorter development time</li></ul><div><span style=\"box-sizing: inherit; font-weight: bolder;\">Tip:</span>&nbsp;The \"Don\'t Repeat Yourself\" (DRY) principle is about reducing the repetition of code. You should extract out the codes that are common for the application, and place them at a single place and reuse them instead of repeating it.</div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(238, 238, 238); margin: 20px -16px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(0, 0, 0);\">PHP - What are Classes and Objects?</h2><div>Classes and objects are the two main aspects of object-oriented programming.</div><div>Look at the following illustration to see the difference between class and objects:</div><div class=\"flex-container\" style=\"box-sizing: inherit; display: flex; flex-wrap: nowrap; background-color: dodgerblue; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px;\"><div class=\"box\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); width: 417.906px; margin: 10px; text-align: center; line-height: 35px;\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">class</h2><div>Fruit</div></div><div class=\"box\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); width: 417.906px; margin: 10px; text-align: center; line-height: 35px;\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">objects</h2><div>Apple</div><div>Banana</div><div>Mango</div></div></div><div>Another example:</div><div class=\"flex-container\" style=\"box-sizing: inherit; display: flex; flex-wrap: nowrap; background-color: dodgerblue; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px;\"><div class=\"box\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); width: 417.906px; margin: 10px; text-align: center; line-height: 35px;\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">class</h2><div>Car</div></div><div class=\"box\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); width: 417.906px; margin: 10px; text-align: center; line-height: 35px;\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px;\">objects</h2><div>Volvo</div><div>Audi</div><div>Toyota</div></div></div><div>So, a class is a template for objects, and an object is an instance of a class.</div><div>When the individual objects are created, they inherit all the properties and behaviors from the class, but each object will have different values for the properties.</div><div>Look at the next chapters to learn more about OOP.<br></div>',
        '2024-02-03'
    ),
    (
        67,
        16,
        1,
        1,
        '<div><div>Data Science is a combination of multiple disciplines that uses statistics, data analysis, and machine learning to analyze data and to extract knowledge and insights from it.</div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(56, 68, 77); margin: 20px -16px; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(221, 221, 221); background-color: rgb(29, 42, 53);\">What is Data Science?</h2><div>Data Science is about data gathering, analysis and decision-making.</div><div>Data Science is about finding patterns in data, through analysis, and make future predictions.</div><div>By using Data Science, companies are able to make:</div><ul style=\"box-sizing: inherit; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"><li style=\"box-sizing: inherit;\">Better decisions (should we choose A or B)</li><li style=\"box-sizing: inherit;\">Predictive analysis (what will happen next?)</li><li style=\"box-sizing: inherit;\">Pattern discoveries (find pattern, or maybe hidden information in the data)</li></ul><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(56, 68, 77); margin: 20px -16px; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(221, 221, 221); background-color: rgb(29, 42, 53);\">Where is Data Science Needed?</h2><div>Data Science is used in many industries in the world today, e.g. banking, consultancy, healthcare, and manufacturing.</div><div>Examples of where Data Science is needed:</div><div class=\"w3-panel w3-info\" style=\"box-sizing: inherit; padding: 32px; margin: 24px -32px; background-color: rgb(25, 61, 61); border-left: none; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px;\"><ul style=\"box-sizing: inherit;\"><li style=\"box-sizing: inherit;\">For route planning: To discover the best routes to ship</li><li style=\"box-sizing: inherit;\">To foresee delays for flight/ship/train etc. (through predictive analysis)</li><li style=\"box-sizing: inherit;\">To create promotional offers</li><li style=\"box-sizing: inherit;\">To find the best suited time to deliver goods</li><li style=\"box-sizing: inherit;\">To forecast the next years revenue for a company</li><li style=\"box-sizing: inherit;\">To analyze health benefit of training</li><li style=\"box-sizing: inherit;\">To predict who will win elections</li></ul></div><div>Data Science can be applied in nearly every part of a business where data is available. Examples are:</div><div class=\"w3-panel w3-info\" style=\"box-sizing: inherit; padding: 32px; margin: 24px -32px; background-color: rgb(25, 61, 61); border-left: none; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px;\"><ul style=\"box-sizing: inherit;\"><li style=\"box-sizing: inherit;\">Consumer goods</li><li style=\"box-sizing: inherit;\">Stock markets</li><li style=\"box-sizing: inherit;\">Industry</li><li style=\"box-sizing: inherit;\">Politics</li><li style=\"box-sizing: inherit;\">Logistic companies</li><li style=\"box-sizing: inherit;\">E-commerce</li></ul></div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(56, 68, 77); margin: 20px -16px; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"><div id=\"midcontentadcontainer\" style=\"box-sizing: inherit; text-align: center; margin-left: -16px; margin-right: -16px; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53); overflow: auto;\"><div id=\"div-gpt-ad-1493883843099-0\" data-google-query-id=\"COq9pfbaj4QDFcKcJwId4rIAGA\" style=\"box-sizing: inherit;\"><div id=\"sn_ad_label_div-gpt-ad-1493883843099-0\" class=\"sn_ad_label\" style=\"box-sizing: inherit; color: rgb(0, 0, 0); font-size: 12px; height: unset !important;\">ADVERTISEMENT</div><div id=\"google_ads_iframe_/16833175/MidContent_0__container__\" style=\"box-sizing: inherit; border: 0pt none;\"><iframe id=\"google_ads_iframe_/16833175/MidContent_0\" name=\"google_ads_iframe_/16833175/MidContent_0\" title=\"3rd party ad content\" width=\"728\" height=\"90\" scrolling=\"no\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" aria-label=\"Advertisement\" tabindex=\"0\" allow=\"attribution-reporting\" data-load-complete=\"true\" data-google-container-id=\"4\" style=\"box-sizing: inherit; vertical-align: bottom;\"></iframe></div></div></div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(56, 68, 77); margin: 20px -16px; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(221, 221, 221); background-color: rgb(29, 42, 53);\">How Does a Data Scientist Work?</h2><div>A Data Scientist requires expertise in several backgrounds:</div><ul style=\"box-sizing: inherit; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"><li style=\"box-sizing: inherit;\">Machine Learning</li><li style=\"box-sizing: inherit;\">Statistics</li><li style=\"box-sizing: inherit;\">Programming (Python or R)</li><li style=\"box-sizing: inherit;\">Mathematics</li><li style=\"box-sizing: inherit;\">Databases</li></ul><div>A Data Scientist must find patterns within the data. Before he/she can find the patterns, he/she must organize the data in a standard format.</div><div>Here is how a Data Scientist works:</div><ol style=\"box-sizing: inherit; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Ask the right questions</span>&nbsp;- To understand the business problem.</li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Explore and collect data</span>&nbsp;- From database, web logs, customer feedback, etc.</li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Extract the data</span>&nbsp;- Transform the data to a standardized format.</li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Clean the data</span>&nbsp;- Remove erroneous values from the data.</li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Find and replace missing values</span>&nbsp;- Check for missing values and replace them with a suitable value (e.g. an average value).</li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Normalize data</span>&nbsp;- Scale the values in a practical range (e.g. 140 cm is smaller than 1,8 m. However, the number 140 is larger than 1,8. - so scaling is important).</li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Analyze data, find patterns and make future predictions</span>.</li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Represent the result&nbsp;</span>- Present the result with useful insights in a way the \"company\" can understand.</li></ol><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(56, 68, 77); margin: 20px -16px; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: &quot;Segoe UI&quot;, Arial, sans-serif; margin-top: 10px; margin-bottom: 10px; color: rgb(221, 221, 221); background-color: rgb(29, 42, 53);\">Where to Start?</h2><div>In this tutorial, we will start by presenting what data is and how data can be analyzed.</div><div>You will learn how to use statistics and mathematical functions to make predictions.</div></div>',
        '2024-02-03'
    ),
    (
        68,
        17,
        2,
        1,
        '<div>his chapter shows three commonly used functions when working with Data Science: max(), min(), and mean().</div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(56, 68, 77); margin: 20px -16px; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: \" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" color:=\"\" rgb(221,=\"\" 221,=\"\" 221);=\"\" background-color:=\"\" rgb(29,=\"\" 42,=\"\" 53);\"=\"\">The Sports Watch Data Set</h2><div class=\"w3-responsive\" style=\"box-sizing: inherit; overflow-x: auto; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"><table class=\"ws-table-all\" style=\"box-sizing: inherit; width: 875.828px; border: 1px solid rgb(56, 68, 77); margin-top: 20px; margin-bottom: 20px;\"><tbody style=\"box-sizing: inherit;\"><tr style=\"box-sizing: inherit; border-bottom-width: 1px; border-bottom-color: rgb(56, 68, 77);\"><th style=\"box-sizing: inherit; padding: 8px 8px 8px 16px; text-align: left; vertical-align: top;\">Duration</th><th style=\"box-sizing: inherit; padding: 8px; text-align: left; vertical-align: top;\">Average_Pulse</th><th style=\"box-sizing: inherit; padding: 8px; text-align: left; vertical-align: top;\">Max_Pulse</th><th style=\"box-sizing: inherit; padding: 8px; text-align: left; vertical-align: top;\">Calorie_Burnage</th><th style=\"box-sizing: inherit; padding: 8px; text-align: left; vertical-align: top;\">Hours_Work</th><th style=\"box-sizing: inherit; padding: 8px; text-align: left; vertical-align: top;\">Hours_Sleep</th></tr><tr style=\"box-sizing: inherit; border-bottom-width: 1px; border-bottom-color: rgb(56, 68, 77); background-color: rgb(56, 68, 77);\"><td style=\"box-sizing: inherit; padding: 8px 8px 8px 16px; vertical-align: top;\">30</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">80</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">120</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">240</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">10</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">7</td></tr><tr style=\"box-sizing: inherit; border-bottom-width: 1px; border-bottom-color: rgb(56, 68, 77);\"><td style=\"box-sizing: inherit; padding: 8px 8px 8px 16px; vertical-align: top;\">30</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">85</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">120</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">250</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">10</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">7</td></tr><tr style=\"box-sizing: inherit; border-bottom-width: 1px; border-bottom-color: rgb(56, 68, 77); background-color: rgb(56, 68, 77);\"><td style=\"box-sizing: inherit; padding: 8px 8px 8px 16px; vertical-align: top;\">45</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">90</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">130</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">260</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">8</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">7</td></tr><tr style=\"box-sizing: inherit; border-bottom-width: 1px; border-bottom-color: rgb(56, 68, 77);\"><td style=\"box-sizing: inherit; padding: 8px 8px 8px 16px; vertical-align: top;\">45</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">95</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">130</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">270</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">8</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">7</td></tr><tr style=\"box-sizing: inherit; border-bottom-width: 1px; border-bottom-color: rgb(56, 68, 77); background-color: rgb(56, 68, 77);\"><td style=\"box-sizing: inherit; padding: 8px 8px 8px 16px; vertical-align: top;\">45</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">100</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">140</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">280</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">0</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">7</td></tr><tr style=\"box-sizing: inherit; border-bottom-width: 1px; border-bottom-color: rgb(56, 68, 77);\"><td style=\"box-sizing: inherit; padding: 8px 8px 8px 16px; vertical-align: top;\">60</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">105</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">140</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">290</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">7</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">8</td></tr><tr style=\"box-sizing: inherit; border-bottom-width: 1px; border-bottom-color: rgb(56, 68, 77); background-color: rgb(56, 68, 77);\"><td style=\"box-sizing: inherit; padding: 8px 8px 8px 16px; vertical-align: top;\">60</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">110</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">145</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">300</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">7</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">8</td></tr><tr style=\"box-sizing: inherit; border-bottom-width: 1px; border-bottom-color: rgb(56, 68, 77);\"><td style=\"box-sizing: inherit; padding: 8px 8px 8px 16px; vertical-align: top;\">60</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">115</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">145</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">310</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">8</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">8</td></tr><tr style=\"box-sizing: inherit; border-bottom-width: 1px; border-bottom-color: rgb(56, 68, 77); background-color: rgb(56, 68, 77);\"><td style=\"box-sizing: inherit; padding: 8px 8px 8px 16px; vertical-align: top;\">75</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">120</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">150</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">320</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">0</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">8</td></tr><tr style=\"box-sizing: inherit; border-bottom-width: 1px; border-bottom-color: rgb(56, 68, 77);\"><td style=\"box-sizing: inherit; padding: 8px 8px 8px 16px; vertical-align: top;\">75</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">125</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">150</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">330</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">8</td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">8</td></tr></tbody></table></div><div>The data set above consists of 6 variables, each with 10 observations:</div><ul style=\"box-sizing: inherit; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Duration</span>&nbsp;- How long lasted the training session in minutes?</li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Average_Pulse</span>&nbsp;- What was the average pulse of the training session? This is measured by beats per minute</li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Max_Pulse</span>&nbsp;- What was the max pulse of the training session?</li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Calorie_Burnage</span>&nbsp;- How much calories were burnt on the training session?</li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Hours_Work</span>&nbsp;- How many hours did we work at our job before the training session?</li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Hours_Sleep</span>&nbsp;- How much did we sleep the night before the training session?</li></ul><div class=\"w3-panel w3-info\" style=\"box-sizing: inherit; padding: 32px; margin: 24px -32px; background-color: rgb(25, 61, 61); border-left: none; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px;\"><div>We use underscore (_) to separate strings because Python cannot read space as separator.</div></div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(56, 68, 77); margin: 20px -16px; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: \" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" color:=\"\" rgb(221,=\"\" 221,=\"\" 221);=\"\" background-color:=\"\" rgb(29,=\"\" 42,=\"\" 53);\"=\"\">The max() function</h2><div>The Python&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, \" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 15.75px;=\"\" color:=\"\" rgb(255,=\"\" 153,=\"\" 153);=\"\" background-color:=\"\" rgba(222,=\"\" 222,=\"\" 0.1);=\"\" padding-left:=\"\" 4px;=\"\" padding-right:=\"\" 4px;\"=\"\">max()</code>&nbsp;function is used to find the highest value in an array.</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(56, 68, 77); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"color: rgb(221, 221, 221); box-sizing: inherit; font-size: 24px;\" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" 10px;\"=\"\">Example</h3><div class=\"w3-code notranslate pythonHigh\" style=\"box-sizing: inherit;\" courier=\"\" new\",=\"\" monospace;=\"\" width:=\"\" auto;=\"\" background-color:=\"\" rgb(21,=\"\" 32,=\"\" 43);=\"\" color:=\"\" white;=\"\" padding:=\"\" 8px=\"\" 12px;=\"\" border-left:=\"\" 4px=\"\" solid=\"\" rgb(40,=\"\" 44,=\"\" 52);=\"\" overflow-wrap:=\"\" break-word;=\"\" margin-top:=\"\" 16px=\"\" !important;=\"\" margin-bottom:=\"\" !important;\"=\"\"><span class=\"pythoncolor\" style=\"box-sizing: inherit;\"><font color=\"#ffffff\"><span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\"></span>Average_pulse_max = max(<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">80</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">85</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">90</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">95</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">100</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">105</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">110</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">115</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">120</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">125</span>)<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\"><span class=\"pythonkeywordcolor\" style=\"box-sizing: inherit;\">print</span>&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\"></span>(Average_pulse_max)</font></span></div><br></div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(56, 68, 77); margin: 20px -16px; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: \" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" color:=\"\" rgb(221,=\"\" 221,=\"\" 221);=\"\" background-color:=\"\" rgb(29,=\"\" 42,=\"\" 53);\"=\"\">The min() function</h2><div>The Python&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, \" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 15.75px;=\"\" color:=\"\" rgb(255,=\"\" 153,=\"\" 153);=\"\" background-color:=\"\" rgba(222,=\"\" 222,=\"\" 0.1);=\"\" padding-left:=\"\" 4px;=\"\" padding-right:=\"\" 4px;\"=\"\">min()</code>&nbsp;function is used to find the lowest value in an array.</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(56, 68, 77); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"color: rgb(221, 221, 221); box-sizing: inherit; font-size: 24px; font-family: \" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" 10px;\"=\"\">Example</h3><div class=\"w3-code notranslate pythonHigh\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, \" courier=\"\" new\",=\"\" monospace;=\"\" width:=\"\" auto;=\"\" background-color:=\"\" rgb(21,=\"\" 32,=\"\" 43);=\"\" padding:=\"\" 8px=\"\" 12px;=\"\" border-left:=\"\" 4px=\"\" solid=\"\" rgb(40,=\"\" 44,=\"\" 52);=\"\" overflow-wrap:=\"\" break-word;=\"\" margin-top:=\"\" 16px=\"\" !important;=\"\" margin-bottom:=\"\" !important;\"=\"\"><span class=\"pythoncolor\" style=\"box-sizing: inherit;\"><font color=\"#ffffff\"><span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\"></span>Average_pulse_min = min(<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">80</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">85</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">90</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">95</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">100</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">105</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">110</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">115</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">120</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">125</span>)<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\"><span class=\"pythonkeywordcolor\" style=\"box-sizing: inherit;\">print</span>&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\"></span>(Average_pulse_min)</font></span></div><br></div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(56, 68, 77); margin: 20px -16px; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: \" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" color:=\"\" rgb(221,=\"\" 221,=\"\" 221);=\"\" background-color:=\"\" rgb(29,=\"\" 42,=\"\" 53);\"=\"\">The mean() function</h2><div>The NumPy&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, \" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 15.75px;=\"\" color:=\"\" rgb(255,=\"\" 153,=\"\" 153);=\"\" background-color:=\"\" rgba(222,=\"\" 222,=\"\" 0.1);=\"\" padding-left:=\"\" 4px;=\"\" padding-right:=\"\" 4px;\"=\"\">mean()</code>&nbsp;function is used to find the average value of an array.</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(56, 68, 77); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"color: rgb(221, 221, 221); box-sizing: inherit; font-size: 24px; font-family: \" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" 10px;\"=\"\">Example</h3><div class=\"w3-code notranslate pythonHigh\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, \" courier=\"\" new\",=\"\" monospace;=\"\" width:=\"\" auto;=\"\" background-color:=\"\" rgb(21,=\"\" 32,=\"\" 43);=\"\" padding:=\"\" 8px=\"\" 12px;=\"\" border-left:=\"\" 4px=\"\" solid=\"\" rgb(40,=\"\" 44,=\"\" 52);=\"\" overflow-wrap:=\"\" break-word;=\"\" margin-top:=\"\" 16px=\"\" !important;=\"\" margin-bottom:=\"\" !important;\"=\"\"><span class=\"pythoncolor\" style=\"box-sizing: inherit;\"><font color=\"#ffffff\"><span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\"></span><span class=\"pythonkeywordcolor\" style=\"box-sizing: inherit;\">import</span>&nbsp;numpy&nbsp;<span class=\"pythonkeywordcolor\" style=\"box-sizing: inherit;\">as</span>&nbsp;np<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">Calorie_burnage =&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\"></span>[<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">240</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">250</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">260</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">270</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">280</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">290</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">300</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">310</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">320</span>,&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\">330</span>]<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">Average_calorie_burnage =&nbsp;<span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\"></span>np.mean(Calorie_burnage)<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\"><span class=\"pythonkeywordcolor\" style=\"box-sizing: inherit;\">print</span>(Average_calorie_burnage)</font></span></div><br></div><div class=\"w3-panel w3-note\" style=\"box-sizing: inherit; padding: 16px 32px; margin: 24px -32px; border-left: none; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 244, 163) !important;\"><div><span style=\"box-sizing: inherit; font-weight: bolder;\">Note:</span>&nbsp;We write&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">np.</span>&nbsp;in front of&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">mean</span>&nbsp;to let Python know that we want to activate the&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">mean</span>&nbsp;function from the&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">Numpy</span>&nbsp;library.</div></div>',
        '2024-02-03'
    );

INSERT INTO
    `content` (
        `content_id`,
        `topic_id`,
        `chapter_id`,
        `course_id`,
        `data`,
        `created_at`
    )
VALUES (
        69,
        18,
        3,
        1,
        '<div><div>Mathematical functions are important to know as a data scientist, because we want to make predictions and interpret them.</div><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: \" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" color:=\"\" rgb(221,=\"\" 221,=\"\" 221);=\"\" background-color:=\"\" rgb(29,=\"\" 42,=\"\" 53);\"=\"\"><a href=\"../Upload/CoursesMaterials/DOCS/Material-DOCS65bd6aba7ac1d9.77990583.pptx\" target=\"_blank\"><span style=\"font-size:12px;\">Uploaded File</span></a><div style=\"text-align:center;\"><img src=\"../Upload/CoursesMaterials/Picture/Material-Picture65be7c1f7faa63.87703640.png\" style=\"cursor: default;\"></div><br></h2><div><br></div><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: \" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" color:=\"\" rgb(221,=\"\" 221,=\"\" 221);=\"\" background-color:=\"\" rgb(29,=\"\" 42,=\"\" 53);\"=\"\">Linear Functions</h2><div>In mathematics a function is used to relate one variable to another variable.</div><div>Suppose we consider the relationship between calorie burnage and average pulse. It is reasonable to assume that, in general, the calorie burnage will change as the average pulse changes - we say that the calorie burnage depends upon the average pulse.</div><div>Furthermore, it may be reasonable to assume that as the average pulse increases, so will the calorie burnage. Calorie burnage and average pulse are the two variables being considered.</div><div>Because the calorie burnage depends upon the average pulse, we say that calorie burnage is the dependent variable and the average pulse is the independent variable.</div><div>The relationship between a dependent and an independent variable can often be expressed mathematically using a formula (function).</div><div><span style=\"box-sizing: inherit; font-weight: bolder;\">A linear function has one independent variable (x) and one dependent variable (y), and has the following form:</span></div><div class=\"w3-code notranslate\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, \" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 15px;=\"\" width:=\"\" auto;=\"\" background-color:=\"\" rgb(21,=\"\" 32,=\"\" 43);=\"\" color:=\"\" white;=\"\" padding:=\"\" 8px=\"\" 12px;=\"\" border-left:=\"\" 4px=\"\" solid=\"\" rgb(40,=\"\" 44,=\"\" 52);=\"\" overflow-wrap:=\"\" break-word;=\"\" margin-top:=\"\" 16px=\"\" !important;=\"\" margin-bottom:=\"\" !important;\"=\"\"><div style=\"box-sizing: inherit;\">y = f(x) = ax + b</div></div><div>This function is used to calculate a value for the dependent variable when we choose a value for the independent variable.</div><div>Explanation:</div><ul style=\"box-sizing: inherit; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"><li style=\"box-sizing: inherit;\">f(x) = the output (the dependant variable)</li><li style=\"box-sizing: inherit;\">x = the input (the independant variable)</li><li style=\"box-sizing: inherit;\">a = slope = is the coefficient of the independent variable. It gives the rate of change of the dependent variable</li><li style=\"box-sizing: inherit;\">b = intercept = is the value of the dependent variable when x = 0. It is also the point where the diagonal line crosses the vertical axis.</li></ul><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(56, 68, 77); margin: 20px -16px; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: \" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" color:=\"\" rgb(221,=\"\" 221,=\"\" 221);=\"\" background-color:=\"\" rgb(29,=\"\" 42,=\"\" 53);\"=\"\">Linear Function With One Explanatory Variable</h2><div>A function with one explanatory variable means that we use one variable for prediction.</div><div>Let us say we want to predict calorie burnage using average pulse. We have the following formula: &nbsp;</div><div class=\"w3-code notranslate\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, \" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 15px;=\"\" width:=\"\" auto;=\"\" background-color:=\"\" rgb(21,=\"\" 32,=\"\" 43);=\"\" color:=\"\" white;=\"\" padding:=\"\" 8px=\"\" 12px;=\"\" border-left:=\"\" 4px=\"\" solid=\"\" rgb(40,=\"\" 44,=\"\" 52);=\"\" overflow-wrap:=\"\" break-word;=\"\" margin-top:=\"\" 16px=\"\" !important;=\"\" margin-bottom:=\"\" !important;\"=\"\"><div style=\"box-sizing: inherit;\">f(x) = 2x + 80</div></div><div>Here, the numbers and variables means:</div><ul style=\"box-sizing: inherit; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"><li style=\"box-sizing: inherit;\">f(x) = The output. This number is where we get the predicted value of Calorie_Burnage</li><li style=\"box-sizing: inherit;\">x = The input, which is Average_Pulse</li><li style=\"box-sizing: inherit;\">2 = Slope = Specifies how much Calorie_Burnage increases if Average_Pulse increases by one. It tells us how \"steep\" the diagonal line is</li><li style=\"box-sizing: inherit;\">80 = Intercept = A fixed value. It is the value of the dependent variable when x = 0</li></ul><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(56, 68, 77); margin: 20px -16px; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: \" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" color:=\"\" rgb(221,=\"\" 221,=\"\" 221);=\"\" background-color:=\"\" rgb(29,=\"\" 42,=\"\" 53);\"=\"\">Plotting a Linear Function</h2><div>The term linearity means a \"straight line\". So, if you show a linear function graphically, the line will always be a straight line. The line can slope upwards, downwards, and in some cases may be horizontal or vertical.</div><div>Here is a graphical representation of the mathematical function above:</div><img src=\"https://www.w3schools.com/datascience/img_linearity.png\" alt=\"Linear function\" style=\"box-sizing: inherit; border-style: none; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53); max-width: 100%; height: auto; cursor: default;\"><span style=\"color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"></span><h3 style=\"box-sizing: inherit; font-size: 24px; font-family: \" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" color:=\"\" rgb(221,=\"\" 221,=\"\" 221);=\"\" background-color:=\"\" rgb(29,=\"\" 42,=\"\" 53);\"=\"\">Graph Explanations:</h3><ul style=\"box-sizing: inherit; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"><li style=\"box-sizing: inherit;\">The horizontal axis is generally called the x-axis. Here, it represents Average_Pulse.</li><li style=\"box-sizing: inherit;\">The vertical axis is generally called the y-axis. Here, it represents Calorie_Burnage.</li><li style=\"box-sizing: inherit;\">Calorie_Burnage is a function of Average_Pulse, because Calorie_Burnage is assumed to be dependent on Average_Pulse.</li><li style=\"box-sizing: inherit;\">In other words, we use Average_Pulse to predict Calorie_Burnage.</li><li style=\"box-sizing: inherit;\">The blue (diagonal) line represents the structure of the mathematical function that predicts calorie burnage.</li></ul></div>',
        '2024-02-03'
    ),
    (
        70,
        19,
        4,
        1,
        '<div>A mathematical function will have difficulties in predicting precise values, if the observations are \"spread\". Standard deviation is a measure of uncertainty.</div><div>A low standard deviation means that most of the numbers are close to the mean (average) value.</div><div>A high standard deviation means that the values are spread out over a wider range.</div><div class=\"w3-panel w3-note\" style=\"box-sizing: inherit; padding: 16px 32px; margin: 24px -32px; border-left: none; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(255, 244, 163) !important;\"><div><span style=\"box-sizing: inherit; font-weight: bolder;\">Tip:</span>&nbsp;Standard Deviation is often represented by the symbol Sigma: σ</div></div><div>We can use the&nbsp;<code class=\"w3-codespan\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, \" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 15.75px;=\"\" color:=\"\" rgb(255,=\"\" 153,=\"\" 153);=\"\" background-color:=\"\" rgba(222,=\"\" 222,=\"\" 0.1);=\"\" padding-left:=\"\" 4px;=\"\" padding-right:=\"\" 4px;\"=\"\">std()</code>&nbsp;function from Numpy to find the standard deviation of a variable:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(56, 68, 77); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"color: rgb(221, 221, 221); box-sizing: inherit; font-size: 24px; font-family: \" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" 10px;\"=\"\">Example</h3><div class=\"w3-code notranslate pythonHigh\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, \" courier=\"\" new\",=\"\" monospace;=\"\" width:=\"\" auto;=\"\" background-color:=\"\" rgb(21,=\"\" 32,=\"\" 43);=\"\" padding:=\"\" 8px=\"\" 12px;=\"\" border-left:=\"\" 4px=\"\" solid=\"\" rgb(40,=\"\" 44,=\"\" 52);=\"\" overflow-wrap:=\"\" break-word;=\"\" margin-top:=\"\" 16px=\"\" !important;=\"\" margin-bottom:=\"\" !important;\"=\"\"><span class=\"pythoncolor\" style=\"box-sizing: inherit;\"><font color=\"#ffffff\"><span class=\"pythonkeywordcolor\" style=\"box-sizing: inherit;\">import</span>&nbsp;numpy&nbsp;<span class=\"pythonkeywordcolor\" style=\"box-sizing: inherit;\">as</span>&nbsp;np<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">std = np.std(full_health_data)<br style=\"box-sizing: inherit;\"><span class=\"pythonkeywordcolor\" style=\"box-sizing: inherit;\">print</span>(std)</font></span></div><br></div><div><br></div><hr style=\"box-sizing: content-box; height: 0px; overflow: visible; border-top: 1px solid rgb(56, 68, 77); margin: 20px -16px; color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"><h2 style=\"box-sizing: inherit; font-size: 32px; font-family: \" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" color:=\"\" rgb(221,=\"\" 221,=\"\" 221);=\"\" background-color:=\"\" rgb(29,=\"\" 42,=\"\" 53);\"=\"\">Coefficient of Variation</h2><div>The coefficient of variation is used to get an idea of how large the standard deviation is.</div><div>Mathematically, the coefficient of variation is defined as:</div><div class=\"w3-code notranslate\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, \" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 15px;=\"\" width:=\"\" auto;=\"\" background-color:=\"\" rgb(21,=\"\" 32,=\"\" 43);=\"\" color:=\"\" white;=\"\" padding:=\"\" 8px=\"\" 12px;=\"\" border-left:=\"\" 4px=\"\" solid=\"\" rgb(40,=\"\" 44,=\"\" 52);=\"\" overflow-wrap:=\"\" break-word;=\"\" margin-top:=\"\" 16px=\"\" !important;=\"\" margin-bottom:=\"\" !important;\"=\"\"><div style=\"box-sizing: inherit;\">Coefficient of Variation = Standard Deviation / Mean</div></div><div>&nbsp;We can do this in Python if we proceed with the following code:</div><div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(56, 68, 77); border-radius: 5px; padding: 8px 20px; margin: 24px -20px; font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\"><h3 style=\"color: rgb(221, 221, 221); box-sizing: inherit; font-size: 24px; font-family: \" segoe=\"\" ui\",=\"\" arial,=\"\" sans-serif;=\"\" margin-top:=\"\" 10px;=\"\" margin-bottom:=\"\" 10px;\"=\"\">Example</h3><div class=\"w3-code notranslate pythonHigh\" style=\"box-sizing: inherit; font-family: Consolas, Menlo, \" courier=\"\" new\",=\"\" monospace;=\"\" width:=\"\" auto;=\"\" background-color:=\"\" rgb(21,=\"\" 32,=\"\" 43);=\"\" padding:=\"\" 8px=\"\" 12px;=\"\" border-left:=\"\" 4px=\"\" solid=\"\" rgb(40,=\"\" 44,=\"\" 52);=\"\" overflow-wrap:=\"\" break-word;=\"\" margin-top:=\"\" 16px=\"\" !important;=\"\" margin-bottom:=\"\" !important;\"=\"\"><span class=\"pythoncolor\" style=\"box-sizing: inherit;\"><font color=\"#ffffff\"><span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\"></span><span class=\"pythonkeywordcolor\" style=\"box-sizing: inherit;\">import</span>&nbsp;numpy&nbsp;<span class=\"pythonkeywordcolor\" style=\"box-sizing: inherit;\">as</span>&nbsp;np<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">cv = np.std(full_health_data) / np.mean(full_health_data)<br style=\"box-sizing: inherit;\"><span class=\"pythonnumbercolor\" style=\"box-sizing: inherit;\"></span><span class=\"pythonkeywordcolor\" style=\"box-sizing: inherit;\">print</span>(cv)</font></span></div><br></div><div>The output:</div><br><span style=\"color: rgb(221, 221, 221); font-family: Verdana, sans-serif; font-size: 15px; background-color: rgb(29, 42, 53);\"></span><div>We see that the variables Duration, Calorie_Burnage and Hours_Work has a high Standard Deviation compared to Max_Pulse, Average_Pulse and Hours_Sleep.</div>',
        '2024-02-03'
    );

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
    `course_id` int(11) NOT NULL,
    `title` varchar(1023) NOT NULL,
    `description` varchar(1023) NOT NULL,
    `instructor_id` int(11) NOT NULL,
    `created_at` date NOT NULL DEFAULT current_timestamp(),
    `status` enum('Public', 'Private') NOT NULL DEFAULT 'Public',
    `cover` varchar(255) NOT NULL DEFAULT 'default_course.jpg'
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO
    `course` (
        `course_id`,
        `title`,
        `description`,
        `instructor_id`,
        `created_at`,
        `status`,
        `cover`
    )
VALUES (
        1,
        'Data Science Tutorial\n',
        'Data Science is about data gathering, analysis and decision-making.\n\nData Science is about finding patterns in data, through analysis, and make future predictions.\n\nBy using Data Science, companies are able to make:\n\nBetter decisions (should we choose A or B)\nPredictive analysis (what will happen next?)\nPattern discoveries (find pattern, or maybe hidden information in the data)',
        1,
        '2024-01-15',
        'Public',
        'default_course.jpg'
    ),
    (
        19,
        'PHP',
        'PHP is a server scripting language, and a powerful tool for making dynamic and interactive Web pages.\n\nPHP is a widely-used, free, and efficient alternative to competitors such as Microsoft\'s ASP. PHP is an amazing and popular language!\n\nIt is powerful enough to be at the core of the biggest blogging system on the web (WordPress)!\nIt is deep enough to run large social networks!\nIt is also easy enough to be a beginner\'s first server side language!',
        1,
        '2024-02-03',
        'Public',
        'COVER-65be586036a403.96711861.jpg'
    );

-- --------------------------------------------------------

--
-- Table structure for table `coursesmaterial`
--
INSERT INTO
    `course` (
        `course_id`,
        `title`,
        `description`,
        `instructor_id`,
        `created_at`,
        `status`,
        `cover`
    )
VALUES (
        3,
        'Introduction to Computer Science',
        'This course covers the fundamental concepts of computer science. Students will learn about algorithms, data structures, software engineering, and computer architecture. Additionally, they will gain practical programming skills in languages such as Python and Java. Emphasis will be placed on problem-solving and critical thinking, providing a strong foundation for further studies in computer science and related fields. By the end of this course, students will be equipped with the essential knowledge and skills required to tackle more advanced topics and real-world challenges in computing.',
        1,
        '2024-01-15',
        'Public',
        'intro_cs.jpg'
    ),
    (
        7,
        'Advanced Mathematics',
        'Delve into advanced mathematical concepts, including calculus, linear algebra, and differential equations. This course is designed to provide a deep understanding of mathematical theories and their applications in real-world scenarios. Students will explore topics such as multivariable calculus, eigenvalues, eigenvectors, and systems of linear equations. Ideal for those pursuing engineering, physics, or higher studies in mathematics, this course will enhance problem-solving abilities and analytical thinking. Through rigorous exercises and practical examples, students will develop a comprehensive understanding of advanced mathematical principles.',
        2,
        '2024-02-01',
        'Public',
        'advanced_math.jpg'
    ),
    (
        13,
        'Creative Writing',
        'Explore the art of creative writing through various genres such as fiction, poetry, and non-fiction. This course encourages students to develop their unique voice and style while providing techniques and exercises to enhance their writing skills. Students will engage in workshops, peer reviews, and discussions to refine their craft. Topics include character development, plot structure, and literary devices. Perfect for aspiring authors and writers, this course will help students to express their creativity and effectively convey their ideas through the written word.',
        3,
        '2024-03-10',
        'Private',
        'creative_writing.jpg'
    ),
    (
        22,
        'Digital Marketing',
        'Learn the strategies and tools needed to succeed in digital marketing. This course covers essential topics such as search engine optimization (SEO), social media marketing, content marketing, and email marketing. Students will gain hands-on experience with real-world projects and case studies. The course also explores data analytics, pay-per-click advertising, and the latest trends in digital marketing. By the end of the course, students will have a solid understanding of how to create and execute effective digital marketing campaigns to reach and engage their target audience.',
        1,
        '2024-04-05',
        'Public',
        'digital_marketing.jpg'
    ),
    (
        8,
        'Introduction to Philosophy',
        'A comprehensive introduction to the major themes and concepts in philosophy. This course explores the works of great philosophers, ethical theories, metaphysics, and epistemology. Students will engage in critical thinking and discussions, enhancing their understanding of philosophical questions and ideas. Topics include the nature of reality, the existence of God, free will, and the foundation of morality. Through reading and analysis of philosophical texts, students will develop their reasoning and argumentation skills, preparing them for further philosophical inquiry or related fields.',
        2,
        '2024-05-20',
        'Public',
        'intro_philosophy.jpg'
    );

CREATE TABLE `coursesmaterial` (
    `material_id` int(11) NOT NULL,
    `URL` varchar(1023) NOT NULL,
    `type` varchar(127) NOT NULL,
    `instructor_id` int(11) NOT NULL,
    `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `coursesmaterial`
--

INSERT INTO
    `coursesmaterial` (
        `material_id`,
        `URL`,
        `type`,
        `instructor_id`,
        `created_at`
    )
VALUES (
        1,
        '../Upload/CoursesMaterials/Material-Picture65bd601d923bd5.70209892.png',
        'Picture',
        1,
        '2024-02-01'
    ),
    (
        2,
        '../Upload/CoursesMaterials/Picture/Material-Picture65bd6982a056f9.83452659.png',
        'Picture',
        1,
        '2024-02-03'
    ),
    (
        3,
        '../Upload/CoursesMaterials/Video/Material-Video65bd699c3c8795.08098210.mp4',
        'Video',
        1,
        '2024-02-03'
    ),
    (
        4,
        '../Upload/CoursesMaterials/DOCS/Material-DOCS65bd6a0dc132d2.01910569.docx',
        'DOCS',
        1,
        '2024-02-03'
    ),
    (
        5,
        '../Upload/CoursesMaterials/DOCS/Material-DOCS65bd6aafa862d2.47497421.docx',
        'DOCS',
        1,
        '2024-02-03'
    ),
    (
        6,
        '../Upload/CoursesMaterials/DOCS/Material-DOCS65bd6aba7ac1d9.77990583.pptx',
        'DOCS',
        1,
        '2024-02-03'
    ),
    (
        7,
        '../Upload/CoursesMaterials/Picture/Material-Picture65be7c1f7faa63.87703640.png',
        'Picture',
        1,
        '2024-02-03'
    );

-- --------------------------------------------------------

--
-- Table structure for table `enrolled_student`
--

CREATE TABLE `enrolled_student` (
    `enrolled_id` int(11) NOT NULL,
    `course_id` int(11) NOT NULL,
    `student_id` int(11) NOT NULL,
    `enrolled_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `enrolled_student`
--

INSERT INTO
    `enrolled_student` (
        `enrolled_id`,
        `course_id`,
        `student_id`,
        `enrolled_at`
    )
VALUES (10, 1, 1, '2024-02-03'),
    (11, 19, 1, '2024-02-03'),
    (12, 19, 2, '2024-02-03');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
    `instructor_id` int(11) NOT NULL,
    `username` varchar(255) NOT NULL,
    `password` varchar(1023) NOT NULL,
    `first_name` varchar(255) NOT NULL,
    `last_name` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL,
    `date_of_birth` date NOT NULL,
    `date_of_joined` date NOT NULL,
    `status` enum('Active', 'Not Active') NOT NULL DEFAULT 'Active',
    `profile_img` varchar(255) NOT NULL DEFAULT 'default.jpg'
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO
    `instructor` (
        `instructor_id`,
        `username`,
        `password`,
        `first_name`,
        `last_name`,
        `email`,
        `date_of_birth`,
        `date_of_joined`,
        `status`,
        `profile_img`
    )
VALUES (
        1,
        'elias17',
        '$2y$10$KisOzDSecV5ilUfh4OqyGuXqWb./vzA3EHQ0tZynd0E7sjaqEZWXe',
        'Elias',
        'Yasin',
        'eliasyasin@edupulsedb.com',
        '1998-07-05',
        '2024-01-15',
        'Not Active',
        'elias1765bd4ccc51b252.02996728.jpg'
    ),
    (
        2,
        'Eliasu7n',
        '$2y$10$7aqpJf4c5eiYKB5qypLxwenoVK8j3AbVBSxjTV/c7LmtnLLq6lAr.',
        'Test name',
        'test Last',
        'john@jo.com',
        '2024-01-11',
        '0000-00-00',
        'Not Active',
        'default.jpg'
    ),
    (
        3,
        'Elias3jk',
        '$2y$10$HpaKVl0li5/XT0fHMxBsZeXZUSoVmLoIz62kqLHZ3e0.V2F0blFHS',
        'Test Instructor',
        'Instructor',
        'john@jo.com',
        '2024-01-19',
        '0000-00-00',
        'Not Active',
        'default.jpg'
    );

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
    `student_id` int(11) NOT NULL,
    `username` varchar(255) NOT NULL,
    `password` varchar(1023) NOT NULL,
    `first_name` varchar(255) NOT NULL,
    `last_name` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL,
    `date_of_birth` date NOT NULL,
    `date_of_joined` date NOT NULL DEFAULT current_timestamp(),
    `status` enum('Active', 'Not Active') NOT NULL DEFAULT 'Active',
    `profile_img` varchar(255) NOT NULL DEFAULT 'default.jpg'
) ENGINE = InnoDB DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO
    `student` (
        `student_id`,
        `username`,
        `password`,
        `first_name`,
        `last_name`,
        `email`,
        `date_of_birth`,
        `date_of_joined`,
        `status`,
        `profile_img`
    )
VALUES (
        1,
        'fuad17',
        '$2y$10$KisOzDSecV5ilUfh4OqyGuXqWb./vzA3EHQ0tZynd0E7sjaqEZWXe',
        'Fuad',
        'Ahmed',
        'fuadahmedQ@gmail.com',
        '2000-05-06',
        '2024-01-14',
        'Active',
        'fuad1765be460dc9e468.81974271.png'
    ),
    (
        2,
        'leta2020',
        '$2y$10$Zye7SP.JPXk6y9TVrwgmuOzUiTRwsvjHhsvPVwsleDUgJS8EjfOCe',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Active',
        'leta202065a6eec810f097.68733156.png'
    ),
    (
        23,
        'hdhg2020',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Active',
        'default.jpg'
    ),
    (
        25,
        'lfdeta2020',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Active',
        'default.jpg'
    ),
    (
        56,
        'kjhljhl',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Active',
        'default.jpg'
    ),
    (
        65,
        'leta2dfd020',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        152,
        'fdffuad17',
        '$2y$10$0y7cu/y5FyPnEX4VR0Ybtu8rwexchCi5iDbJkrhFqvm4Wb8QxNIUu',
        'Fuad',
        'Ahmed',
        'fuadahmed@gmail.com',
        '2000-05-02',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        223,
        'test2020',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        256,
        'letrtra2020',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        453,
        'dsgsg',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        456,
        'ldfdeta2020',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        543,
        'fgfdgbn',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        564,
        'fdhgfdhfd',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        565,
        'sfrjjkg',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        642,
        'fdleta2020',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        656,
        'letgfddgda2020',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        662,
        'Helogf',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        678,
        'hdfhdfh',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        862,
        'dfdghh',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        879,
        'fdgfdgfd',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        2565,
        'leta2dfd020',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Active',
        'default.jpg'
    ),
    (
        2656,
        'letdfda2020',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        2686,
        'hfhhdzs',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        3632,
        'sfgsg',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Active',
        'default.jpg'
    ),
    (
        5652,
        'lehuta2020',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        6536,
        'leta2dfd020',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        6561,
        'leta20fdf20',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        6987,
        'adsfsf',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        20853,
        'yryreyu',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Active',
        'default.jpg'
    ),
    (
        23453,
        'gfsf2020',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        25655,
        'leuiyta2020',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Active',
        'default.jpg'
    ),
    (
        52341,
        'ldfdgeta2020',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Not Active',
        'default.jpg'
    ),
    (
        654346,
        'ytujfd',
        '$2y$10$nL5cCfrOudcL.64BhtBlfuY47RdX8DCHdUSwFTNqa3rDAqYJP/hc2',
        'Leta',
        'Aklilu',
        'leta@gmail.com',
        '1998-05-12',
        '2024-01-14',
        'Active',
        'default.jpg'
    );

-- --------------------------------------------------------

--
-- Table structure for table `student_progress`
--

CREATE TABLE `student_progress` (
    `progress_id` int(11) NOT NULL,
    `course_id` int(11) NOT NULL,
    `student_id` int(11) NOT NULL,
    `progress` double NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `student_progress`
--

INSERT INTO
    `student_progress` (
        `progress_id`,
        `course_id`,
        `student_id`,
        `progress`
    )
VALUES (13, 1, 1, 100),
    (14, 19, 1, 100),
    (15, 19, 2, 100);

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
    `topic_id` int(11) NOT NULL,
    `chapter_id` int(11) NOT NULL,
    `course_id` int(11) NOT NULL,
    `title` varchar(1023) NOT NULL,
    `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `topic`
--

INSERT INTO
    `topic` (
        `topic_id`,
        `chapter_id`,
        `course_id`,
        `title`,
        `created_at`
    )
VALUES (
        10,
        9,
        19,
        'comments',
        '2024-02-03'
    ),
    (
        11,
        9,
        19,
        'Variables',
        '2024-02-03'
    ),
    (
        12,
        10,
        19,
        'PHP Loops',
        '2024-02-03'
    ),
    (
        13,
        10,
        19,
        'PHP Functions',
        '2024-02-03'
    ),
    (
        14,
        12,
        19,
        'PHP Arrays',
        '2024-02-03'
    ),
    (
        15,
        12,
        19,
        'PHP OOP',
        '2024-02-03'
    ),
    (
        16,
        1,
        1,
        'Data Science Introduction',
        '2024-02-03'
    ),
    (
        17,
        2,
        1,
        'Data Science Functions',
        '2024-02-03'
    ),
    (
        18,
        3,
        1,
        'Linear Functions',
        '2024-02-03'
    ),
    (
        19,
        4,
        1,
        'Standard Deviation',
        '2024-02-03'
    );

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin` ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
ADD PRIMARY KEY (`certificate_id`),
ADD KEY `course_id` (`course_id`),
ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
ADD PRIMARY KEY (`chapter_id`),
ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
ADD PRIMARY KEY (`content_id`),
ADD KEY `topic_id` (`topic_id`),
ADD KEY `chapter_id` (`chapter_id`),
ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
ADD PRIMARY KEY (`course_id`),
ADD KEY `instructor_id` (`instructor_id`);

--
-- Indexes for table `coursesmaterial`
--
ALTER TABLE `coursesmaterial`
ADD PRIMARY KEY (`material_id`),
ADD KEY `instructor_id` (`instructor_id`);

--
-- Indexes for table `enrolled_student`
--
ALTER TABLE `enrolled_student`
ADD PRIMARY KEY (`enrolled_id`),
ADD KEY `course_id` (`course_id`),
ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor` ADD PRIMARY KEY (`instructor_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student` ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_progress`
--
ALTER TABLE `student_progress`
ADD PRIMARY KEY (`progress_id`),
ADD KEY `course_id` (`course_id`),
ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
ADD PRIMARY KEY (`topic_id`),
ADD KEY `chapter_id` (`chapter_id`),
ADD KEY `course_id` (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
MODIFY `certificate_id` int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 134539;

--
-- AUTO_INCREMENT for table `chapter`
--
ALTER TABLE `chapter`
MODIFY `chapter_id` int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 13;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 71;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 20;

--
-- AUTO_INCREMENT for table `coursesmaterial`
--
ALTER TABLE `coursesmaterial`
MODIFY `material_id` int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 8;

--
-- AUTO_INCREMENT for table `enrolled_student`
--
ALTER TABLE `enrolled_student`
MODIFY `enrolled_id` int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 13;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
MODIFY `instructor_id` int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 654347;

--
-- AUTO_INCREMENT for table `student_progress`
--
ALTER TABLE `student_progress`
MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 16;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `certificate`
--
ALTER TABLE `certificate`
ADD CONSTRAINT `certificate_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
ADD CONSTRAINT `certificate_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `chapter`
--
ALTER TABLE `chapter`
ADD CONSTRAINT `chapter_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);

--
-- Constraints for table `content`
--
ALTER TABLE `content`
ADD CONSTRAINT `content_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`topic_id`),
ADD CONSTRAINT `content_ibfk_2` FOREIGN KEY (`chapter_id`) REFERENCES `chapter` (`chapter_id`),
ADD CONSTRAINT `content_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`instructor_id`);

--
-- Constraints for table `coursesmaterial`
--
ALTER TABLE `coursesmaterial`
ADD CONSTRAINT `coursesmaterial_ibfk_1` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`instructor_id`);

--
-- Constraints for table `enrolled_student`
--
ALTER TABLE `enrolled_student`
ADD CONSTRAINT `enrolled_student_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
ADD CONSTRAINT `enrolled_student_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `student_progress`
--
ALTER TABLE `student_progress`
ADD CONSTRAINT `student_progress_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
ADD CONSTRAINT `student_progress_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `topic`
--
ALTER TABLE `topic`
ADD CONSTRAINT `topic_ibfk_1` FOREIGN KEY (`chapter_id`) REFERENCES `chapter` (`chapter_id`),
ADD CONSTRAINT `topic_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
SELECT * FROM admin;

SELECT * FROM Student;

SELECT * FROM course;

use edupulsedb;

CREATE TABLE `department` (
    `department_id` int(11) NOT NULL AUTO_INCREMENT,
    `department_name` varchar(255) NOT NULL,
    PRIMARY KEY (`department_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

INSERT INTO
    `department` (
        `department_id`,
        `department_name`
    )
VALUES (1, 'CSE'),
    (2, 'MNS'),
    (3, 'EEE');

ALTER TABLE `student`
ADD `department_id` int(11) NOT NULL,
ADD CONSTRAINT `fk_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

INSERT INTO
    `student` (
        `student_id`,
        `username`,
        `password`,
        `first_name`,
        `last_name`,
        `email`,
        `date_of_birth`,
        `date_of_joined`,
        `status`,
        `profile_img`,
        `department_id`
    )
VALUES (
        101,
        'arif23',
        '$2y$10$uTE9TPFqYlJYbYJgSWLsheWN4KLW8w3ZJV8O.3/aQnM.PKp/VGVEC',
        'Arif',
        'Hossain',
        'arif.hossain@example.com',
        '2000-01-15',
        '2024-01-15',
        'Active',
        'default.jpg',
        1
    ),
    (
        102,
        'naimur45',
        '$2y$10$uTE9TPFqYlJYbYJgSWLsheWN4KLW8w3ZJV8O.3/aQnM.PKp/VGVEC',
        'Naimur',
        'Rahman',
        'naimur.rahman@example.com',
        '1999-04-20',
        '2024-02-01',
        'Active',
        'default.jpg',
        1
    ),
    (
        103,
        'kamal67',
        '$2y$10$uTE9TPFqYlJYbYJgSWLsheWN4KLW8w3ZJV8O.3/aQnM.PKp/VGVEC',
        'Kamal',
        'Ahmed',
        'kamal.ahmed@example.com',
        '2001-03-10',
        '2024-03-10',
        'Not Active',
        'default.jpg',
        2
    ),
    (
        104,
        'aminul89',
        '$2y$10$uTE9TPFqYlJYbYJgSWLsheWN4KLW8w3ZJV8O.3/aQnM.PKp/VGVEC',
        'Aminul',
        'Islam',
        'aminul.islam@example.com',
        '1998-06-05',
        '2024-04-05',
        'Active',
        'default.jpg',
        2
    ),
    (
        105,
        'rafiq12',
        '$2y$10$uTE9TPFqYlJYbYJgSWLsheWN4KLW8w3ZJV8O.3/aQnM.PKp/VGVEC',
        'Rafiq',
        'Chowdhury',
        'rafiq.chowdhury@example.com',
        '2002-07-25',
        '2024-05-20',
        'Active',
        'default.jpg',
        3
    ),
    (
        106,
        'sabina34',
        '$2y$10$uTE9TPFqYlJYbYJgSWLsheWN4KLW8w3ZJV8O.3/aQnM.PKp/VGVEC',
        'Sabina',
        'Yasmin',
        'sabina.yasmin@example.com',
        '1997-09-10',
        '2024-06-15',
        'Not Active',
        'chillgirl.jpg',
        3
    ),
    (
        107,
        'rina56',
        '$2y$10$uTE9TPFqYlJYbYJgSWLsheWN4KLW8w3ZJV8O.3/aQnM.PKp/VGVEC',
        'Rina',
        'Akter',
        'rina.akter@example.com',
        '2003-02-14',
        '2024-07-22',
        'Active',
        'chillgirl.jpg',
        1
    ),
    (
        108,
        'shamima78',
        '$2y$10$uTE9TPFqYlJYbYJgSWLsheWN4KLW8w3ZJV8O.3/aQnM.PKp/VGVEC',
        'Shamima',
        'Sultana',
        'shamima.sultana@example.com',
        '1996-11-30',
        '2024-08-10',
        'Active',
        'chillgirl.jpg',
        1
    ),
    (
        109,
        'nusrat90',
        '$2y$10$uTE9TPFqYlJYbYJgSWLsheWN4KLW8w3ZJV8O.3/aQnM.PKp/VGVEC',
        'Nusrat',
        'Jahan',
        'nusrat.jahan@example.com',
        '2004-12-05',
        '2024-09-25',
        'Active',
        'chillgirl.jpg',
        2
    ),
    (
        110,
        'mala12',
        '$2y$10$uTE9TPFqYlJYbYJgSWLsheWN4KLW8w3ZJV8O.3/aQnM.PKp/VGVEC',
        'Mala',
        'Khatun',
        'mala.khatun@example.com',
        '1995-05-19',
        '2024-10-15',
        'Not Active',
        'chillgirl.jpg',
        3
    );

SELECT * FROM student;