/*
   Copyright 2016 Ryuichi Saito, LLC

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

public class ParenthesizedExpression: PrimaryExpression {
  public struct ExpressionElement {
    let identifier: Identifier?
    let expression: Expression

    public init(identifier: Identifier?, expression: Expression) {
      self.identifier = identifier
      self.expression = expression
    }

    public init(expression: Expression) {
      self.init(identifier: nil, expression: expression)
    }
  }

  public let expressions: [ExpressionElement]

  public init(expressions: [ExpressionElement]) {
    self.expressions = expressions
  }
}
