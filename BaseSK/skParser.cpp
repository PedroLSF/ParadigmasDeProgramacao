// #include <bits/stdc++.h>
#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <functional>

using namespace std;

vector<string> argsOf(const string &s, int qtd) {
    vector<string> args;

    int parenthesesCount = 0;
    int startOfParentheses = 0;
    int i;
    for(i = 0; args.size() != qtd; i++) {
        if(s.size() == i) {
            return vector<string>(); // Não foi possível
        }

        if(s[i] == '(') {
            if(parenthesesCount++ == 0) {
                startOfParentheses = i;
            }
        } else if(s[i] == ')') {
            if(--parenthesesCount == 0) {
                args.emplace_back(s.substr(startOfParentheses+1, i-startOfParentheses-1));
            }
        } else if(parenthesesCount == 0) {
            string e = string(1, s[i]);
            args.emplace_back(e);
        }
    }

    args.emplace_back(s.substr(i));

    return args;
}

string parenthesesIfNeeded(const string &s) {
    return s.size() > 1 ? '('+s+')' : s;
}

int findClosingParentheses(const string &s) {
    if(s[0] != '(') {
        cout << "WRONG USAGE OF findClosingParentheses" << endl;
        exit(1);
    }

    int qtd = 1;
    for(int i = 1; i < s.size(); i++) {
        if(s[i] == '(') {
            qtd++;
        } else if(s[i] == ')') {
            if(--qtd == 0) {
                return i;
            }
        }
    }

    cout << "CLOSING PARENTHESES DOES NOT EXITS" << endl;
    exit(1);
}

string withoutLeftParentheses(const string &s) {
    if(s[0] != '(') {
        return s;
    }

    int parenthesesCount = 0;
    for(int i = 0; i < s.size(); i++) {
        if(s[i] == '(') {
            parenthesesCount++;
        } else if(s[i] == ')') {
            if(--parenthesesCount == 0) {
                return withoutLeftParentheses(s.substr(1, i-1) + s.substr(i+1));
            }
        }
    }

    cout << "PARENTHESES IS INVALID IN withoutLeftParentheses" << endl;
    exit(1);
}

void verifyParentheses(const string &s) {
    int qtd = 0;
    for(auto c : s) {
        if(c == '(') {
            qtd++;
        } else if(c == ')') {
            qtd--;
        }
    }

    if(qtd != 0) {
        cout << "PARENTHESES IS INVALID in verifyParentheses" << endl;
        exit(1);
    }
}

string S(const string &str, const string &padding) {
    vector<string> args = argsOf(str, 3);
    if(args.size() == 0) {
        return "";
    }

    string f = args[0];
    string g = args[1];
    string x = parenthesesIfNeeded(args[2]);
    string remaining = args[3];

    cout << padding << "Realizando a redução beta Sfgx = fx(gx) em 'S" << str << "' com os argumentos f = '"<< f << "', g = '"<< g << "', x = '"<< x << "'" << endl;
    cout << padding << "Resultando em '" << withoutLeftParentheses(f+x+'('+g+x+')') << "'\n";
    return withoutLeftParentheses(f+x+'('+g+x+')' + remaining);
}

string K(const string &str, const string &padding) {
    vector<string> args = argsOf(str, 2);
    if(args.size() == 0) {
        return "";
    }
    string x = args[0];
    string remaining = args[2];


    cout << padding << "Realizando a redução beta Kxy = x em 'K" << str << "' tem os argumentos x = '"<< x << "', y = '"<< args[1] << "'" << endl;
    cout << padding << "Resultando em '" << withoutLeftParentheses(x) << "'\n";
    return withoutLeftParentheses(x + remaining);
}

string I(const string &str, const string &padding) {
    vector<string> args = argsOf(str, 1);
    if(args.size() == 0) {
        return "";
    }
    string x = args[0];
    string remaining = args[1];

    cout << padding << "Realizando a redução beta Ix = x em 'I" << str << "' tem o argumento x = '"<< x << "'" << endl;
    cout << padding << "Resultando em '" << withoutLeftParentheses(x) << "'\n";
    return withoutLeftParentheses(x + remaining);
}

string C(const string &str, const string &padding) {
    vector<string> args = argsOf(str, 3);
    if(args.size() == 0) {
        return "";
    }
    string f = args[0];
    string x = parenthesesIfNeeded(args[1]);
    string y = parenthesesIfNeeded(args[2]);
    string remaining = args[3];

    cout << padding << "Realizando a redução beta Cfxy = fyx em 'C" << str << "' tem o argumento f = '"<< f << "', x = '" << x << "', y = '" << y << "'" << endl;
    cout << padding << "Resultando em '" << withoutLeftParentheses(f+y+x) << "'\n";
    return withoutLeftParentheses(f+y+x+remaining);
}

string B(const string &str, const string &padding) {
    vector<string> args = argsOf(str, 3);
    if(args.size() == 0) {
        return "";
    }
    string f = args[0];
    string g = args[1];
    string x = parenthesesIfNeeded(args[2]);
    string remaining = args[3];

    cout << padding << "Realizando a redução beta Bfgx = f(gx) em 'B" << str << "' tem o argumento f = '"<< f << "', g = '" << g << "', x = '" << x << "'" << endl;
    cout << padding << "Resultando em '" << withoutLeftParentheses(f+"("+g+x+")") << "'\n";
    return withoutLeftParentheses(f+"("+g+x+")"+remaining);
}

unordered_map<char, function<string(const string&, const string&)>> strategy = {
    {'S', S},
    {'K', K},
    {'I', I},
    {'C', C},
    {'B', B},
};

string parse(string str, int recursionDepth) {
    string padding = string(recursionDepth*4, ' ');

    if(str[0] == '(') {
        cout << padding << "Podemos simplicar removendo o parenteses a esquerda de '" << str << "'" << endl;
        str = withoutLeftParentheses(str);
        cout << padding << "Resultando em '" << str << "'" << endl << endl;
    }

    string res;
    while(str.size()) {
        if(strategy.find(str[0]) != strategy.end()) {
            string reduced = strategy[str[0]](str.substr(1), padding);
            if(reduced == "") {
                // Não é possível fazer a redução. Falta argumentos.
                res += str[0];
                str = str.substr(1);
                continue;
            } else {
                str = reduced;
            }
            cout << padding << "Então agora estamos assim: " << res + str << endl << endl;
        } else if(str[0] == '(') {
            int closingI = findClosingParentheses(str);
            
            cout << padding << "Vamos agora resolver o subproblema '" << str.substr(1, closingI-1) << "' de '" << res + str << "':" << endl;
            string sub = parse(str.substr(1, closingI-1), recursionDepth + 1);

            cout << padding << "Voltando do subproblema, a gente tinha antes isso: '" << res + str << "'\n";
            cout << padding << "Mas como sabemos o resultado desse subproblema '" << str.substr(1, closingI-1)  << "' que é '"<< sub << "':" << endl;
            res += "(" + sub + ")";
            str = str.substr(closingI+1);
            cout << padding << "Então agora estamos assim: " << res + str << endl << endl;
        } else {
            res += str[0];
            str = str.substr(1);
        }

        verifyParentheses(str);
    }

    return res;
}

string parse(string str) {
    return parse(str, 0);
}

int main(int argc, char* argv[]) {

    if(argc != 2)
    {
        cout << "Uso: ./skParser <expressao>\n";
        exit(1);
    }

    parse(argv[1]);
}
