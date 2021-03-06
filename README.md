# Ransible

A Ruby library for _hopefully_ making Ansible modules

## Motivation

Using Ansible is preferable to using Chef, but not being able to drop down to Ruby to answer some questions is a pain at time.

## Conceptual Usage

It looks like creating Ansible modules are rather easy. Here is a basic example taken from [ansible/ansible-for-rubyists](https://github.com/ansible/ansible-for-rubyists)

```ruby
#!/usr/bin/ruby
require 'rubygems'
require 'json'
File.open(ARGV[0]) do |fh|
   data = JSON.parse(fh.read())
   begin
      a = data['a'].to_i()
      b = data['b'].to_i()
   rescue
      print JSON.dump({
          'failed' => true,
          'msg'    => 'failed to parse inputs x or y'
      })
      exit(1)
   end
   result = {
      'a'   => a,
      'b'   => b,
      'sum' => a + b,
   }
   print JSON.dump(result)
end
```

Looks straight forward enough. When you create Ansible modules in Python, you get a little more help. This project is an exploration in both Ruby modules for Ansibel and extending help to those wanting to create modules in Ruby.

```python
module = AnsibleModule(
    argument_spec = dict(...),
    supports_check_mode=True
)

if module.check_mode:
    # Check if any changes would be made by don't actually make those changes
    module.exit_json(changed=check_if_system_state_would_be_changed())
```

Here is a proposed usage for something similar in Ruby.

```ruby
#!/usr/bin/ruby
require 'ransible'

Ransible.module do |result, params|
  result.fail! 'Divide by zero!' if b == 0
  result.changed! 'We did it!',  answer: a/b
end
```


## Contributing

1. Fork it ( https://github.com/[my-github-username]/ransible/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
