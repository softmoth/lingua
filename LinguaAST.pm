class ASTNode {    
}

class AST::TOP is ASTNode {
    has ASTNode @.statements;
}

class AST::ScalarDeclaration is ASTNode {
    has Str $.variable-name;    
    has ASTNode $.value;
}

class AST::NumberValue is ASTNode {
    has $.value;
}

class AST::StringValue is ASTNode {
    has Str $.value;
}

class AST::Null is ASTNode {
}

class AST::Variable is ASTNode {
    has Str $.variable-name;
}

class AST::ArrayDeclaration is ASTNode {
    has Str $.variable-name;
    has ASTNode @.elements;
}

class AST::HashDeclaration is ASTNode {
    has Str $.variable-name;
    has ASTNode %.elements;
}

class AST::ScalarAssignment is ASTNode {
    has Str $.variable-name;
    has ASTNode $.rhs;
}

class AST::ArrayItemAssignment is ASTNode {
    has Str $.variable-name;
    has Int $.index;
    has ASTNode $.rhs;
}

class AST::HashItemAssignment is ASTNode {
    has Str $.variable-name;
    has Str $.key;
    has ASTNode $.rhs;
}

class AST::ArrayAssignment is ASTNode {
    has Str $.variable-name;
    has ASTNode @.elements;
}

class AST::HashAssignment is ASTNode {
    has Str $.variable-name;
    has Str @.keys;
    has ASTNode @.values;
}