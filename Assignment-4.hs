data BExpr = F | T | Not BExpr
    | BExpr :&: BExpr
    | BExpr :|: BExpr

eval :: BExpr -> Bool
eval (F) = False
eval (T) = True
eval (Not x) = not (eval x)
eval (a :&: b) = (eval a) && (eval b)
eval (a :|: b) = (eval a) || (eval b)

main = do
    print $