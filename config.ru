# frozen_string_literal: true

run(proc { [200, { 'Content-Type' => 'text/plain' }, ['hello world']] })
