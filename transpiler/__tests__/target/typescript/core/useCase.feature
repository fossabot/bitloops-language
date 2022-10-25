# https://docs.google.com/spreadsheets/d/1p3u8LIB873B9c7KvIDR7x-9od653oHC6DM82qR18zsk/edit#gid=0
Feature: UseCase to Typescript target language

  Background:
    Given language is "TypeScript"

    Scenario Template: UseCase with execute
    Given I have a useCase <useCase>
    When I generate the code
    Then I should see the <output> code

   # Examples: # @bitloops-auto-generated
       # | useCase | output | @bitloops-auto-generated |
       # | {"HelloWorldUseCase":{"parameterDependencies":[],"returnTypes":{"ok":"HelloWorldResponseDTO","errors":["HelloWorldErrors.InvalidName"]},"execute":{"parameterDependencies":[{"value":"helloWorldRequestDTO","type":"HelloWorldRequestDTO"}],"statements":[{"constDecomposition":{"names":["name"],"evaluation":{"regularEvaluation":{"type":"variable","value":"helloWorldRequestDTO"}}}}]}},"ExampleUseCase":{"parameterDependencies":[],"returnTypes":{"ok":"ExampleResponseDTO","errors":["ExampleErrors.InvalidName"]},"execute":{"parameterDependencies":[{"value":"exampleRequestDTO","type":"ExampleRequestDTO"}],"statements":[{"constDecomposition":{"names":["name"],"evaluation":{"regularEvaluation":{"type":"variable","value":"exampleRequestDTO"}}}}]}}} | {"HelloWorldUseCase":"type HelloWorldUseCaseResponse = Either<HelloWorldResponseDTO, HelloWorldErrors.InvalidName>;export class HelloWorldUseCase implements UseCase<HelloWorldRequestDTO, Promise<HelloWorldUseCaseResponse>> {async execute(helloWorldRequestDTO:HelloWorldRequestDTO): Promise<HelloWorldUseCaseResponse> {const { name } = helloWorldRequestDTO;}}","ExampleUseCase":"type ExampleUseCaseResponse = Either<ExampleResponseDTO, ExampleErrors.InvalidName>;export class ExampleUseCase implements UseCase<ExampleRequestDTO, Promise<ExampleUseCaseResponse>> {async execute(exampleRequestDTO:ExampleRequestDTO): Promise<ExampleUseCaseResponse> {const { name } = exampleRequestDTO;}}"} | @bitloops-auto-generated |
       # | {"HelloWorldUseCase":{"parameterDependencies":[],"returnTypes":{"ok":"HelloWorldResponseDTO","errors":[]},"execute":{"parameterDependencies":[],"statements":[{"returnOK":{"expression":{"evaluation":{"dto":{"fields":[{"name":"message","expression":{"evaluation":{"regularEvaluation":{"type":"string","value":"Hello, World!"}}}}],"name":"HelloWorldResponseDTO"}}}}}]}}} | {"HelloWorldUseCase":"type HelloWorldUseCaseResponse = Either<HelloWorldResponseDTO, never>;export class HelloWorldUseCase implements UseCase<void, Promise<HelloWorldUseCaseResponse>> {async execute(): Promise<HelloWorldUseCaseResponse> {return ok({message:'Hello, World!'});}}"} | @bitloops-auto-generated |
       # | {"CreateTodoUseCase":{"parameterDependencies":[],"returnTypes":{"ok":"CreateTodoResponseDTO","errors":[]},"execute":{"parameterDependencies":[],"statements":[{"constDeclaration":{"expression":{"evaluation":{"valueObject":{"name":"TitleVO","props":[{"expression":{"evaluation":{"regularEvaluation":{"type":"variable","value":"requestDTO.title"}}},"name":"title"}]}}},"name":"title"}},{"constDeclaration":{"expression":{"evaluation":{"entity":{"name":"TodoEntity","props":[{"expression":{"evaluation":{"regularEvaluation":{"type":"variable","value":"title"}}},"name":"title"},{"expression":{"evaluation":{"regularEvaluation":{"type":"bool","value":"false"}}},"name":"completed"}]}}},"name":"todo"}},{"returnOK":{"expression":{"evaluation":{"dto":{"fields":[{"name":"message","expression":{"evaluation":{"regularEvaluation":{"type":"string","value":"Todo created!"}}}}],"name":"CreateTodoResponseDTO"}}}}}]}}} | {"CreateTodoUseCase":"type CreateTodoUseCaseResponse = Either<CreateTodoResponseDTO, never>;export class CreateTodoUseCase implements UseCase<void, Promise<CreateTodoUseCaseResponse>> {async execute(): Promise<CreateTodoUseCaseResponse> {const title = TitleVO.create({title:requestDTO.title});if (!title.isFail()) { const todo = TodoEntity.create({title:title,completed:false});if (!todo.isFail()) { return ok({message:'Todo created!'});} else { return fail(todo.value) }} else { return fail(title.value) }}}"} | @bitloops-auto-generated |
       # | {"CreateTodoUseCase":{"parameterDependencies":[],"returnTypes":{"ok":"void","errors":[]},"execute":{"parameterDependencies":[],"statements":[{"constDeclaration":{"expression":{"evaluation":{"valueObject":{"name":"TitleVO","props":[{"expression":{"evaluation":{"regularEvaluation":{"type":"variable","value":"requestDTO.title"}}},"name":"title"}]}}},"name":"title"}},{"constDeclaration":{"expression":{"evaluation":{"entity":{"name":"TodoEntity","props":[{"expression":{"evaluation":{"regularEvaluation":{"type":"variable","value":"title"}}},"name":"title"},{"expression":{"evaluation":{"regularEvaluation":{"type":"bool","value":"false"}}},"name":"completed"}]}}},"name":"todo"}},{"returnOK":{"expression":{"evaluation":{"regularEvaluation":{"type":"void","value":""}}}}}]}}} | {"CreateTodoUseCase":"type CreateTodoUseCaseResponse = Either<void, never>;export class CreateTodoUseCase implements UseCase<void, Promise<CreateTodoUseCaseResponse>> {async execute(): Promise<CreateTodoUseCaseResponse> {const title = TitleVO.create({title:requestDTO.title});if (!title.isFail()) { const todo = TodoEntity.create({title:title,completed:false});if (!todo.isFail()) { return ok();} else { return fail(todo.value) }} else { return fail(title.value) }}}"} | @bitloops-auto-generated |
  
    Examples: # @bitloops-auto-generated
        | useCase | output | @bitloops-auto-generated |
        | 123,34,72,101,108,108,111,87,111,114,108,100,85,115,101,67,97,115,101,34,58,123,34,112,97,114,97,109,101,116,101,114,68,101,112,101,110,100,101,110,99,105,101,115,34,58,91,93,44,34,114,101,116,117,114,110,84,121,112,101,115,34,58,123,34,111,107,34,58,34,72,101,108,108,111,87,111,114,108,100,82,101,115,112,111,110,115,101,68,84,79,34,44,34,101,114,114,111,114,115,34,58,91,34,72,101,108,108,111,87,111,114,108,100,69,114,114,111,114,115,46,73,110,118,97,108,105,100,78,97,109,101,34,93,125,44,34,101,120,101,99,117,116,101,34,58,123,34,112,97,114,97,109,101,116,101,114,68,101,112,101,110,100,101,110,99,105,101,115,34,58,91,123,34,118,97,108,117,101,34,58,34,104,101,108,108,111,87,111,114,108,100,82,101,113,117,101,115,116,68,84,79,34,44,34,116,121,112,101,34,58,34,72,101,108,108,111,87,111,114,108,100,82,101,113,117,101,115,116,68,84,79,34,125,93,44,34,115,116,97,116,101,109,101,110,116,115,34,58,91,123,34,99,111,110,115,116,68,101,99,111,109,112,111,115,105,116,105,111,110,34,58,123,34,110,97,109,101,115,34,58,91,34,110,97,109,101,34,93,44,34,101,118,97,108,117,97,116,105,111,110,34,58,123,34,114,101,103,117,108,97,114,69,118,97,108,117,97,116,105,111,110,34,58,123,34,116,121,112,101,34,58,34,118,97,114,105,97,98,108,101,34,44,34,118,97,108,117,101,34,58,34,104,101,108,108,111,87,111,114,108,100,82,101,113,117,101,115,116,68,84,79,34,125,125,125,125,93,125,125,44,34,69,120,97,109,112,108,101,85,115,101,67,97,115,101,34,58,123,34,112,97,114,97,109,101,116,101,114,68,101,112,101,110,100,101,110,99,105,101,115,34,58,91,93,44,34,114,101,116,117,114,110,84,121,112,101,115,34,58,123,34,111,107,34,58,34,69,120,97,109,112,108,101,82,101,115,112,111,110,115,101,68,84,79,34,44,34,101,114,114,111,114,115,34,58,91,34,69,120,97,109,112,108,101,69,114,114,111,114,115,46,73,110,118,97,108,105,100,78,97,109,101,34,93,125,44,34,101,120,101,99,117,116,101,34,58,123,34,112,97,114,97,109,101,116,101,114,68,101,112,101,110,100,101,110,99,105,101,115,34,58,91,123,34,118,97,108,117,101,34,58,34,101,120,97,109,112,108,101,82,101,113,117,101,115,116,68,84,79,34,44,34,116,121,112,101,34,58,34,69,120,97,109,112,108,101,82,101,113,117,101,115,116,68,84,79,34,125,93,44,34,115,116,97,116,101,109,101,110,116,115,34,58,91,123,34,99,111,110,115,116,68,101,99,111,109,112,111,115,105,116,105,111,110,34,58,123,34,110,97,109,101,115,34,58,91,34,110,97,109,101,34,93,44,34,101,118,97,108,117,97,116,105,111,110,34,58,123,34,114,101,103,117,108,97,114,69,118,97,108,117,97,116,105,111,110,34,58,123,34,116,121,112,101,34,58,34,118,97,114,105,97,98,108,101,34,44,34,118,97,108,117,101,34,58,34,101,120,97,109,112,108,101,82,101,113,117,101,115,116,68,84,79,34,125,125,125,125,93,125,125,125 | 123,34,72,101,108,108,111,87,111,114,108,100,85,115,101,67,97,115,101,34,58,34,116,121,112,101,32,72,101,108,108,111,87,111,114,108,100,85,115,101,67,97,115,101,82,101,115,112,111,110,115,101,32,61,32,69,105,116,104,101,114,60,72,101,108,108,111,87,111,114,108,100,82,101,115,112,111,110,115,101,68,84,79,44,32,72,101,108,108,111,87,111,114,108,100,69,114,114,111,114,115,46,73,110,118,97,108,105,100,78,97,109,101,62,59,101,120,112,111,114,116,32,99,108,97,115,115,32,72,101,108,108,111,87,111,114,108,100,85,115,101,67,97,115,101,32,105,109,112,108,101,109,101,110,116,115,32,85,115,101,67,97,115,101,60,72,101,108,108,111,87,111,114,108,100,82,101,113,117,101,115,116,68,84,79,44,32,80,114,111,109,105,115,101,60,72,101,108,108,111,87,111,114,108,100,85,115,101,67,97,115,101,82,101,115,112,111,110,115,101,62,62,32,123,97,115,121,110,99,32,101,120,101,99,117,116,101,40,104,101,108,108,111,87,111,114,108,100,82,101,113,117,101,115,116,68,84,79,58,72,101,108,108,111,87,111,114,108,100,82,101,113,117,101,115,116,68,84,79,41,58,32,80,114,111,109,105,115,101,60,72,101,108,108,111,87,111,114,108,100,85,115,101,67,97,115,101,82,101,115,112,111,110,115,101,62,32,123,99,111,110,115,116,32,123,32,110,97,109,101,32,125,32,61,32,104,101,108,108,111,87,111,114,108,100,82,101,113,117,101,115,116,68,84,79,59,125,125,34,44,34,69,120,97,109,112,108,101,85,115,101,67,97,115,101,34,58,34,116,121,112,101,32,69,120,97,109,112,108,101,85,115,101,67,97,115,101,82,101,115,112,111,110,115,101,32,61,32,69,105,116,104,101,114,60,69,120,97,109,112,108,101,82,101,115,112,111,110,115,101,68,84,79,44,32,69,120,97,109,112,108,101,69,114,114,111,114,115,46,73,110,118,97,108,105,100,78,97,109,101,62,59,101,120,112,111,114,116,32,99,108,97,115,115,32,69,120,97,109,112,108,101,85,115,101,67,97,115,101,32,105,109,112,108,101,109,101,110,116,115,32,85,115,101,67,97,115,101,60,69,120,97,109,112,108,101,82,101,113,117,101,115,116,68,84,79,44,32,80,114,111,109,105,115,101,60,69,120,97,109,112,108,101,85,115,101,67,97,115,101,82,101,115,112,111,110,115,101,62,62,32,123,97,115,121,110,99,32,101,120,101,99,117,116,101,40,101,120,97,109,112,108,101,82,101,113,117,101,115,116,68,84,79,58,69,120,97,109,112,108,101,82,101,113,117,101,115,116,68,84,79,41,58,32,80,114,111,109,105,115,101,60,69,120,97,109,112,108,101,85,115,101,67,97,115,101,82,101,115,112,111,110,115,101,62,32,123,99,111,110,115,116,32,123,32,110,97,109,101,32,125,32,61,32,101,120,97,109,112,108,101,82,101,113,117,101,115,116,68,84,79,59,125,125,34,125 | @bitloops-auto-generated |
        | 123,34,72,101,108,108,111,87,111,114,108,100,85,115,101,67,97,115,101,34,58,123,34,112,97,114,97,109,101,116,101,114,68,101,112,101,110,100,101,110,99,105,101,115,34,58,91,93,44,34,114,101,116,117,114,110,84,121,112,101,115,34,58,123,34,111,107,34,58,34,72,101,108,108,111,87,111,114,108,100,82,101,115,112,111,110,115,101,68,84,79,34,44,34,101,114,114,111,114,115,34,58,91,93,125,44,34,101,120,101,99,117,116,101,34,58,123,34,112,97,114,97,109,101,116,101,114,68,101,112,101,110,100,101,110,99,105,101,115,34,58,91,93,44,34,115,116,97,116,101,109,101,110,116,115,34,58,91,123,34,114,101,116,117,114,110,79,75,34,58,123,34,101,120,112,114,101,115,115,105,111,110,34,58,123,34,101,118,97,108,117,97,116,105,111,110,34,58,123,34,100,116,111,34,58,123,34,102,105,101,108,100,115,34,58,91,123,34,110,97,109,101,34,58,34,109,101,115,115,97,103,101,34,44,34,101,120,112,114,101,115,115,105,111,110,34,58,123,34,101,118,97,108,117,97,116,105,111,110,34,58,123,34,114,101,103,117,108,97,114,69,118,97,108,117,97,116,105,111,110,34,58,123,34,116,121,112,101,34,58,34,115,116,114,105,110,103,34,44,34,118,97,108,117,101,34,58,34,72,101,108,108,111,44,32,87,111,114,108,100,33,34,125,125,125,125,93,44,34,110,97,109,101,34,58,34,72,101,108,108,111,87,111,114,108,100,82,101,115,112,111,110,115,101,68,84,79,34,125,125,125,125,125,93,125,125,125 | 123,34,72,101,108,108,111,87,111,114,108,100,85,115,101,67,97,115,101,34,58,34,116,121,112,101,32,72,101,108,108,111,87,111,114,108,100,85,115,101,67,97,115,101,82,101,115,112,111,110,115,101,32,61,32,69,105,116,104,101,114,60,72,101,108,108,111,87,111,114,108,100,82,101,115,112,111,110,115,101,68,84,79,44,32,110,101,118,101,114,62,59,101,120,112,111,114,116,32,99,108,97,115,115,32,72,101,108,108,111,87,111,114,108,100,85,115,101,67,97,115,101,32,105,109,112,108,101,109,101,110,116,115,32,85,115,101,67,97,115,101,60,118,111,105,100,44,32,80,114,111,109,105,115,101,60,72,101,108,108,111,87,111,114,108,100,85,115,101,67,97,115,101,82,101,115,112,111,110,115,101,62,62,32,123,97,115,121,110,99,32,101,120,101,99,117,116,101,40,41,58,32,80,114,111,109,105,115,101,60,72,101,108,108,111,87,111,114,108,100,85,115,101,67,97,115,101,82,101,115,112,111,110,115,101,62,32,123,114,101,116,117,114,110,32,111,107,40,123,109,101,115,115,97,103,101,58,39,72,101,108,108,111,44,32,87,111,114,108,100,33,39,125,41,59,125,125,34,125 | @bitloops-auto-generated |
        | 123,34,67,114,101,97,116,101,84,111,100,111,85,115,101,67,97,115,101,34,58,123,34,112,97,114,97,109,101,116,101,114,68,101,112,101,110,100,101,110,99,105,101,115,34,58,91,93,44,34,114,101,116,117,114,110,84,121,112,101,115,34,58,123,34,111,107,34,58,34,67,114,101,97,116,101,84,111,100,111,82,101,115,112,111,110,115,101,68,84,79,34,44,34,101,114,114,111,114,115,34,58,91,93,125,44,34,101,120,101,99,117,116,101,34,58,123,34,112,97,114,97,109,101,116,101,114,68,101,112,101,110,100,101,110,99,105,101,115,34,58,91,93,44,34,115,116,97,116,101,109,101,110,116,115,34,58,91,123,34,99,111,110,115,116,68,101,99,108,97,114,97,116,105,111,110,34,58,123,34,101,120,112,114,101,115,115,105,111,110,34,58,123,34,101,118,97,108,117,97,116,105,111,110,34,58,123,34,118,97,108,117,101,79,98,106,101,99,116,34,58,123,34,110,97,109,101,34,58,34,84,105,116,108,101,86,79,34,44,34,112,114,111,112,115,34,58,91,123,34,101,120,112,114,101,115,115,105,111,110,34,58,123,34,101,118,97,108,117,97,116,105,111,110,34,58,123,34,114,101,103,117,108,97,114,69,118,97,108,117,97,116,105,111,110,34,58,123,34,116,121,112,101,34,58,34,118,97,114,105,97,98,108,101,34,44,34,118,97,108,117,101,34,58,34,114,101,113,117,101,115,116,68,84,79,46,116,105,116,108,101,34,125,125,125,44,34,110,97,109,101,34,58,34,116,105,116,108,101,34,125,93,125,125,125,44,34,110,97,109,101,34,58,34,116,105,116,108,101,34,125,125,44,123,34,99,111,110,115,116,68,101,99,108,97,114,97,116,105,111,110,34,58,123,34,101,120,112,114,101,115,115,105,111,110,34,58,123,34,101,118,97,108,117,97,116,105,111,110,34,58,123,34,101,110,116,105,116,121,34,58,123,34,110,97,109,101,34,58,34,84,111,100,111,69,110,116,105,116,121,34,44,34,112,114,111,112,115,34,58,91,123,34,101,120,112,114,101,115,115,105,111,110,34,58,123,34,101,118,97,108,117,97,116,105,111,110,34,58,123,34,114,101,103,117,108,97,114,69,118,97,108,117,97,116,105,111,110,34,58,123,34,116,121,112,101,34,58,34,118,97,114,105,97,98,108,101,34,44,34,118,97,108,117,101,34,58,34,116,105,116,108,101,34,125,125,125,44,34,110,97,109,101,34,58,34,116,105,116,108,101,34,125,44,123,34,101,120,112,114,101,115,115,105,111,110,34,58,123,34,101,118,97,108,117,97,116,105,111,110,34,58,123,34,114,101,103,117,108,97,114,69,118,97,108,117,97,116,105,111,110,34,58,123,34,116,121,112,101,34,58,34,98,111,111,108,34,44,34,118,97,108,117,101,34,58,34,102,97,108,115,101,34,125,125,125,44,34,110,97,109,101,34,58,34,99,111,109,112,108,101,116,101,100,34,125,93,125,125,125,44,34,110,97,109,101,34,58,34,116,111,100,111,34,125,125,44,123,34,114,101,116,117,114,110,79,75,34,58,123,34,101,120,112,114,101,115,115,105,111,110,34,58,123,34,101,118,97,108,117,97,116,105,111,110,34,58,123,34,100,116,111,34,58,123,34,102,105,101,108,100,115,34,58,91,123,34,110,97,109,101,34,58,34,109,101,115,115,97,103,101,34,44,34,101,120,112,114,101,115,115,105,111,110,34,58,123,34,101,118,97,108,117,97,116,105,111,110,34,58,123,34,114,101,103,117,108,97,114,69,118,97,108,117,97,116,105,111,110,34,58,123,34,116,121,112,101,34,58,34,115,116,114,105,110,103,34,44,34,118,97,108,117,101,34,58,34,84,111,100,111,32,99,114,101,97,116,101,100,33,34,125,125,125,125,93,44,34,110,97,109,101,34,58,34,67,114,101,97,116,101,84,111,100,111,82,101,115,112,111,110,115,101,68,84,79,34,125,125,125,125,125,93,125,125,125 | 123,34,67,114,101,97,116,101,84,111,100,111,85,115,101,67,97,115,101,34,58,34,116,121,112,101,32,67,114,101,97,116,101,84,111,100,111,85,115,101,67,97,115,101,82,101,115,112,111,110,115,101,32,61,32,69,105,116,104,101,114,60,67,114,101,97,116,101,84,111,100,111,82,101,115,112,111,110,115,101,68,84,79,44,32,110,101,118,101,114,62,59,101,120,112,111,114,116,32,99,108,97,115,115,32,67,114,101,97,116,101,84,111,100,111,85,115,101,67,97,115,101,32,105,109,112,108,101,109,101,110,116,115,32,85,115,101,67,97,115,101,60,118,111,105,100,44,32,80,114,111,109,105,115,101,60,67,114,101,97,116,101,84,111,100,111,85,115,101,67,97,115,101,82,101,115,112,111,110,115,101,62,62,32,123,97,115,121,110,99,32,101,120,101,99,117,116,101,40,41,58,32,80,114,111,109,105,115,101,60,67,114,101,97,116,101,84,111,100,111,85,115,101,67,97,115,101,82,101,115,112,111,110,115,101,62,32,123,99,111,110,115,116,32,116,105,116,108,101,32,61,32,84,105,116,108,101,86,79,46,99,114,101,97,116,101,40,123,116,105,116,108,101,58,114,101,113,117,101,115,116,68,84,79,46,116,105,116,108,101,125,41,59,105,102,32,40,33,116,105,116,108,101,46,105,115,70,97,105,108,40,41,41,32,123,32,99,111,110,115,116,32,116,111,100,111,32,61,32,84,111,100,111,69,110,116,105,116,121,46,99,114,101,97,116,101,40,123,116,105,116,108,101,58,116,105,116,108,101,44,99,111,109,112,108,101,116,101,100,58,102,97,108,115,101,125,41,59,105,102,32,40,33,116,111,100,111,46,105,115,70,97,105,108,40,41,41,32,123,32,114,101,116,117,114,110,32,111,107,40,123,109,101,115,115,97,103,101,58,39,84,111,100,111,32,99,114,101,97,116,101,100,33,39,125,41,59,125,32,101,108,115,101,32,123,32,114,101,116,117,114,110,32,102,97,105,108,40,116,111,100,111,46,118,97,108,117,101,41,32,125,125,32,101,108,115,101,32,123,32,114,101,116,117,114,110,32,102,97,105,108,40,116,105,116,108,101,46,118,97,108,117,101,41,32,125,125,125,34,125 | @bitloops-auto-generated |
        | 123,34,67,114,101,97,116,101,84,111,100,111,85,115,101,67,97,115,101,34,58,123,34,112,97,114,97,109,101,116,101,114,68,101,112,101,110,100,101,110,99,105,101,115,34,58,91,93,44,34,114,101,116,117,114,110,84,121,112,101,115,34,58,123,34,111,107,34,58,34,118,111,105,100,34,44,34,101,114,114,111,114,115,34,58,91,93,125,44,34,101,120,101,99,117,116,101,34,58,123,34,112,97,114,97,109,101,116,101,114,68,101,112,101,110,100,101,110,99,105,101,115,34,58,91,93,44,34,115,116,97,116,101,109,101,110,116,115,34,58,91,123,34,99,111,110,115,116,68,101,99,108,97,114,97,116,105,111,110,34,58,123,34,101,120,112,114,101,115,115,105,111,110,34,58,123,34,101,118,97,108,117,97,116,105,111,110,34,58,123,34,118,97,108,117,101,79,98,106,101,99,116,34,58,123,34,110,97,109,101,34,58,34,84,105,116,108,101,86,79,34,44,34,112,114,111,112,115,34,58,91,123,34,101,120,112,114,101,115,115,105,111,110,34,58,123,34,101,118,97,108,117,97,116,105,111,110,34,58,123,34,114,101,103,117,108,97,114,69,118,97,108,117,97,116,105,111,110,34,58,123,34,116,121,112,101,34,58,34,118,97,114,105,97,98,108,101,34,44,34,118,97,108,117,101,34,58,34,114,101,113,117,101,115,116,68,84,79,46,116,105,116,108,101,34,125,125,125,44,34,110,97,109,101,34,58,34,116,105,116,108,101,34,125,93,125,125,125,44,34,110,97,109,101,34,58,34,116,105,116,108,101,34,125,125,44,123,34,99,111,110,115,116,68,101,99,108,97,114,97,116,105,111,110,34,58,123,34,101,120,112,114,101,115,115,105,111,110,34,58,123,34,101,118,97,108,117,97,116,105,111,110,34,58,123,34,101,110,116,105,116,121,34,58,123,34,110,97,109,101,34,58,34,84,111,100,111,69,110,116,105,116,121,34,44,34,112,114,111,112,115,34,58,91,123,34,101,120,112,114,101,115,115,105,111,110,34,58,123,34,101,118,97,108,117,97,116,105,111,110,34,58,123,34,114,101,103,117,108,97,114,69,118,97,108,117,97,116,105,111,110,34,58,123,34,116,121,112,101,34,58,34,118,97,114,105,97,98,108,101,34,44,34,118,97,108,117,101,34,58,34,116,105,116,108,101,34,125,125,125,44,34,110,97,109,101,34,58,34,116,105,116,108,101,34,125,44,123,34,101,120,112,114,101,115,115,105,111,110,34,58,123,34,101,118,97,108,117,97,116,105,111,110,34,58,123,34,114,101,103,117,108,97,114,69,118,97,108,117,97,116,105,111,110,34,58,123,34,116,121,112,101,34,58,34,98,111,111,108,34,44,34,118,97,108,117,101,34,58,34,102,97,108,115,101,34,125,125,125,44,34,110,97,109,101,34,58,34,99,111,109,112,108,101,116,101,100,34,125,93,125,125,125,44,34,110,97,109,101,34,58,34,116,111,100,111,34,125,125,44,123,34,114,101,116,117,114,110,79,75,34,58,123,34,101,120,112,114,101,115,115,105,111,110,34,58,123,34,101,118,97,108,117,97,116,105,111,110,34,58,123,34,114,101,103,117,108,97,114,69,118,97,108,117,97,116,105,111,110,34,58,123,34,116,121,112,101,34,58,34,118,111,105,100,34,44,34,118,97,108,117,101,34,58,34,34,125,125,125,125,125,93,125,125,125 | 123,34,67,114,101,97,116,101,84,111,100,111,85,115,101,67,97,115,101,34,58,34,116,121,112,101,32,67,114,101,97,116,101,84,111,100,111,85,115,101,67,97,115,101,82,101,115,112,111,110,115,101,32,61,32,69,105,116,104,101,114,60,118,111,105,100,44,32,110,101,118,101,114,62,59,101,120,112,111,114,116,32,99,108,97,115,115,32,67,114,101,97,116,101,84,111,100,111,85,115,101,67,97,115,101,32,105,109,112,108,101,109,101,110,116,115,32,85,115,101,67,97,115,101,60,118,111,105,100,44,32,80,114,111,109,105,115,101,60,67,114,101,97,116,101,84,111,100,111,85,115,101,67,97,115,101,82,101,115,112,111,110,115,101,62,62,32,123,97,115,121,110,99,32,101,120,101,99,117,116,101,40,41,58,32,80,114,111,109,105,115,101,60,67,114,101,97,116,101,84,111,100,111,85,115,101,67,97,115,101,82,101,115,112,111,110,115,101,62,32,123,99,111,110,115,116,32,116,105,116,108,101,32,61,32,84,105,116,108,101,86,79,46,99,114,101,97,116,101,40,123,116,105,116,108,101,58,114,101,113,117,101,115,116,68,84,79,46,116,105,116,108,101,125,41,59,105,102,32,40,33,116,105,116,108,101,46,105,115,70,97,105,108,40,41,41,32,123,32,99,111,110,115,116,32,116,111,100,111,32,61,32,84,111,100,111,69,110,116,105,116,121,46,99,114,101,97,116,101,40,123,116,105,116,108,101,58,116,105,116,108,101,44,99,111,109,112,108,101,116,101,100,58,102,97,108,115,101,125,41,59,105,102,32,40,33,116,111,100,111,46,105,115,70,97,105,108,40,41,41,32,123,32,114,101,116,117,114,110,32,111,107,40,41,59,125,32,101,108,115,101,32,123,32,114,101,116,117,114,110,32,102,97,105,108,40,116,111,100,111,46,118,97,108,117,101,41,32,125,125,32,101,108,115,101,32,123,32,114,101,116,117,114,110,32,102,97,105,108,40,116,105,116,108,101,46,118,97,108,117,101,41,32,125,125,125,34,125 | @bitloops-auto-generated |
  