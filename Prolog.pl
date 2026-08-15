% PROGRAMMING LANGUAGE RECOMMENDATION EXPERT SYSTEM

%  facts

language(python).
language(cpp).
language(java).
language(javascript).
language(typescript).
language(csharp).
language(kotlin).
language(swift).
language(rust).
language(go).
language(r).
language(php).

domain(python, [ai, ml, data_science, automation, web]).
domain(cpp, [competitive_programming, game, systems, embedded]).
domain(java, [enterprise, backend, android]).
domain(javascript, [web, frontend, backend]).
domain(typescript, [web, frontend, backend]).
domain(csharp, [game, desktop, enterprise]).
domain(kotlin, [android, backend, mobile]).
domain(swift, [ios, mobile]).
domain(rust, [systems, embedded, blockchain]).
domain(go, [cloud, backend, distributed]).
domain(r, [data_science, statistics, data_analysis]).
domain(php, [web, backend]).

level(python, beginner).
level(python, intermediate).
level(cpp, intermediate).
level(cpp, advanced).
level(java, intermediate).
level(javascript, beginner).
level(javascript, intermediate).
level(typescript, intermediate).
level(csharp, beginner).
level(csharp, intermediate).
level(kotlin, beginner).
level(swift, beginner).
level(rust, advanced).
level(go, intermediate).
level(r, beginner).
level(php, beginner).

paradigm(python, multi_paradigm).
paradigm(cpp, multi_paradigm).
paradigm(java, object_oriented).
paradigm(javascript, multi_paradigm).
paradigm(typescript, multi_paradigm).
paradigm(csharp, object_oriented).
paradigm(kotlin, object_oriented).
paradigm(swift, object_oriented).
paradigm(rust, multi_paradigm).
paradigm(go, procedural).
paradigm(r, functional).
paradigm(php, multi_paradigm).

performance(python, medium).
performance(cpp, very_high).
performance(java, high).
performance(javascript, medium).
performance(typescript, medium).
performance(csharp, high).
performance(kotlin, high).
performance(swift, high).
performance(rust, very_high).
performance(go, high).
performance(r, medium).
performance(php, medium).


%  RULES

% aiml
recommend(ai, beginner, python).
recommend(ai, intermediate, python).
recommend(ml, beginner, python).
recommend(ml, intermediate, python).

% ds
recommend(data_science, beginner, python).
recommend(data_science, intermediate, r).

% Web Dev
recommend(web, beginner, javascript).
recommend(web, intermediate, typescript).
recommend(frontend, beginner, javascript).
recommend(frontend, intermediate, typescript).
recommend(backend, intermediate, java).

% Mobile Dev
recommend(android, beginner, kotlin).
recommend(android, intermediate, kotlin).
recommend(ios, beginner, swift).
recommend(mobile, intermediate, swift).

% Game Dev
recommend(game, beginner, csharp).
recommend(game, intermediate, cpp).

% CP
recommend(competitive_programming, beginner, cpp).
recommend(competitive_programming, intermediate, cpp).
recommend(competitive_programming, advanced, cpp).

% Systems and Embedded
recommend(systems, intermediate, cpp).
recommend(systems, advanced, rust).
recommend(embedded, intermediate, cpp).
recommend(embedded, advanced, rust).

% Cloud
recommend(cloud, intermediate, go).
recommend(distributed, advanced, go).

% Blockchain
recommend(blockchain, advanced, rust).

%  RULES

reason(python, 'Easy syntax and excellent AI/ML libraries').
reason(cpp, 'High performance and powerful STL').
reason(java, 'Reliable language for enterprise applications').
reason(javascript, 'Essential language for modern web development').
reason(typescript, 'Adds static typing to JavaScript').
reason(csharp, 'Popular choice with Unity game development').
reason(kotlin, 'Modern language officially supported for Android').
reason(swift, 'Designed for Apple and iOS development').
reason(rust, 'Memory safety with very high performance').
reason(go, 'Simple, fast and excellent for cloud systems').
reason(r, 'Strong statistical and data analysis features').
reason(php, 'Simple and widely used for server-side web development').

% QUERY PREDICATES

% Find languages suitable for a domain
language_for_domain(Domain, Language) :-
    domain(Language, Domains),
    member(Domain, Domains).

% Find languages suitable for a skill level
language_for_level(Level, Language) :-
    level(Language, Level).

% Find language with required performance
language_with_performance(Level, Language) :-
    performance(Language, Level).

% Get recommendation with explanation
recommend_with_reason(Interest, Level, Language, Reason) :-
    recommend(Interest, Level, Language),
    reason(Language, Reason).

% Get complete information about a language
language_details(Language, Domains, Level, Paradigm, Performance) :-
    domain(Language, Domains),
    level(Language, Level),
    paradigm(Language, Paradigm),
    performance(Language, Performance).