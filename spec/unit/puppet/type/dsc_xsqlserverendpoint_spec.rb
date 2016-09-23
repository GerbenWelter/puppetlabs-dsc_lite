#!/usr/bin/env ruby
require 'spec_helper'

describe Puppet::Type.type(:dsc_xsqlserverendpoint) do

  let :dsc_xsqlserverendpoint do
    Puppet::Type.type(:dsc_xsqlserverendpoint).new(
      :name     => 'foo',
      :dsc_endpointname => 'foo',
    )
  end

  it 'should allow all properties to be specified' do
    expect { Puppet::Type.type(:dsc_xsqlserverendpoint).new(
      :name     => 'foo',
      :dsc_endpointname => 'foo',
      :dsc_ensure => 'Present',
      :dsc_port => 32,
      :dsc_authorizeduser => 'foo',
      :dsc_sqlserver => 'foo',
      :dsc_sqlinstancename => 'foo',
    )}.to_not raise_error
  end

  it "should stringify normally" do
    expect(dsc_xsqlserverendpoint.to_s).to eq("Dsc_xsqlserverendpoint[foo]")
  end

  it 'should default to ensure => present' do
    expect(dsc_xsqlserverendpoint[:ensure]).to eq :present
  end

  it 'should require that dsc_endpointname is specified' do
    #dsc_xsqlserverendpoint[:dsc_endpointname]
    expect { Puppet::Type.type(:dsc_xsqlserverendpoint).new(
      :name     => 'foo',
    )}.to raise_error(Puppet::Error, /dsc_endpointname is a required attribute/)
  end

  it 'should not accept array for dsc_endpointname' do
    expect{dsc_xsqlserverendpoint[:dsc_endpointname] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_endpointname' do
    expect{dsc_xsqlserverendpoint[:dsc_endpointname] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_endpointname' do
    expect{dsc_xsqlserverendpoint[:dsc_endpointname] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_endpointname' do
    expect{dsc_xsqlserverendpoint[:dsc_endpointname] = 16}.to raise_error(Puppet::ResourceError)
  end

  it 'should accept dsc_ensure predefined value Present' do
    dsc_xsqlserverendpoint[:dsc_ensure] = 'Present'
    expect(dsc_xsqlserverendpoint[:dsc_ensure]).to eq('Present')
  end

  it 'should accept dsc_ensure predefined value present' do
    dsc_xsqlserverendpoint[:dsc_ensure] = 'present'
    expect(dsc_xsqlserverendpoint[:dsc_ensure]).to eq('present')
  end

  it 'should accept dsc_ensure predefined value present and update ensure with this value (ensure end value should be a symbol)' do
    dsc_xsqlserverendpoint[:dsc_ensure] = 'present'
    expect(dsc_xsqlserverendpoint[:ensure]).to eq(dsc_xsqlserverendpoint[:dsc_ensure].downcase.to_sym)
  end

  it 'should accept dsc_ensure predefined value Absent' do
    dsc_xsqlserverendpoint[:dsc_ensure] = 'Absent'
    expect(dsc_xsqlserverendpoint[:dsc_ensure]).to eq('Absent')
  end

  it 'should accept dsc_ensure predefined value absent' do
    dsc_xsqlserverendpoint[:dsc_ensure] = 'absent'
    expect(dsc_xsqlserverendpoint[:dsc_ensure]).to eq('absent')
  end

  it 'should accept dsc_ensure predefined value absent and update ensure with this value (ensure end value should be a symbol)' do
    dsc_xsqlserverendpoint[:dsc_ensure] = 'absent'
    expect(dsc_xsqlserverendpoint[:ensure]).to eq(dsc_xsqlserverendpoint[:dsc_ensure].downcase.to_sym)
  end

  it 'should not accept values not equal to predefined values' do
    expect{dsc_xsqlserverendpoint[:dsc_ensure] = 'invalid value'}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_ensure' do
    expect{dsc_xsqlserverendpoint[:dsc_ensure] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_ensure' do
    expect{dsc_xsqlserverendpoint[:dsc_ensure] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_ensure' do
    expect{dsc_xsqlserverendpoint[:dsc_ensure] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_ensure' do
    expect{dsc_xsqlserverendpoint[:dsc_ensure] = 16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_port' do
    expect{dsc_xsqlserverendpoint[:dsc_port] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_port' do
    expect{dsc_xsqlserverendpoint[:dsc_port] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should accept uint for dsc_port' do
    dsc_xsqlserverendpoint[:dsc_port] = 32
    expect(dsc_xsqlserverendpoint[:dsc_port]).to eq(32)
  end

  it 'should not accept signed (negative) value for dsc_port' do
    value = -32
    expect(value).to be < 0
    expect{dsc_xsqlserverendpoint[:dsc_port] = value}.to raise_error(Puppet::ResourceError)
  end

  it 'should accept string-like uint for dsc_port' do
    dsc_xsqlserverendpoint[:dsc_port] = '16'
    expect(dsc_xsqlserverendpoint[:dsc_port]).to eq(16)
  end

  it 'should accept string-like uint for dsc_port' do
    dsc_xsqlserverendpoint[:dsc_port] = '32'
    expect(dsc_xsqlserverendpoint[:dsc_port]).to eq(32)
  end

  it 'should accept string-like uint for dsc_port' do
    dsc_xsqlserverendpoint[:dsc_port] = '64'
    expect(dsc_xsqlserverendpoint[:dsc_port]).to eq(64)
  end

  it 'should not accept array for dsc_authorizeduser' do
    expect{dsc_xsqlserverendpoint[:dsc_authorizeduser] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_authorizeduser' do
    expect{dsc_xsqlserverendpoint[:dsc_authorizeduser] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_authorizeduser' do
    expect{dsc_xsqlserverendpoint[:dsc_authorizeduser] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_authorizeduser' do
    expect{dsc_xsqlserverendpoint[:dsc_authorizeduser] = 16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_sqlserver' do
    expect{dsc_xsqlserverendpoint[:dsc_sqlserver] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_sqlserver' do
    expect{dsc_xsqlserverendpoint[:dsc_sqlserver] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_sqlserver' do
    expect{dsc_xsqlserverendpoint[:dsc_sqlserver] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_sqlserver' do
    expect{dsc_xsqlserverendpoint[:dsc_sqlserver] = 16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_sqlinstancename' do
    expect{dsc_xsqlserverendpoint[:dsc_sqlinstancename] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_sqlinstancename' do
    expect{dsc_xsqlserverendpoint[:dsc_sqlinstancename] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_sqlinstancename' do
    expect{dsc_xsqlserverendpoint[:dsc_sqlinstancename] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_sqlinstancename' do
    expect{dsc_xsqlserverendpoint[:dsc_sqlinstancename] = 16}.to raise_error(Puppet::ResourceError)
  end

  # Configuration PROVIDER TESTS

  describe "powershell provider tests" do

    it "should successfully instanciate the provider" do
      described_class.provider(:powershell).new(dsc_xsqlserverendpoint)
    end

    before(:each) do
      @provider = described_class.provider(:powershell).new(dsc_xsqlserverendpoint)
    end

    describe "when dscmeta_module_name existing/is defined " do

      it "should compute powershell dsc test script with Invoke-DscResource" do
        expect(@provider.ps_script_content('test')).to match(/Invoke-DscResource/)
      end

      it "should compute powershell dsc test script with method Test" do
        expect(@provider.ps_script_content('test')).to match(/Method\s+=\s*'test'/)
      end

      it "should compute powershell dsc set script with Invoke-DscResource" do
        expect(@provider.ps_script_content('set')).to match(/Invoke-DscResource/)
      end

      it "should compute powershell dsc test script with method Set" do
        expect(@provider.ps_script_content('set')).to match(/Method\s+=\s*'set'/)
      end

    end

    describe "when dsc_ensure is 'present'" do

      before(:each) do
        dsc_xsqlserverendpoint.original_parameters[:dsc_ensure] = 'present'
        dsc_xsqlserverendpoint[:dsc_ensure] = 'present'
        @provider = described_class.provider(:powershell).new(dsc_xsqlserverendpoint)
      end

      it "should update :ensure to :present" do
        expect(dsc_xsqlserverendpoint[:ensure]).to eq(:present)
      end

      it "should compute powershell dsc test script in which ensure value is 'present'" do
        expect(@provider.ps_script_content('test')).to match(/ensure = 'present'/)
      end

      it "should compute powershell dsc set script in which ensure value is 'present'" do
        expect(@provider.ps_script_content('set')).to match(/ensure = 'present'/)
      end

    end

    describe "when dsc_ensure is 'absent'" do

      before(:each) do
        dsc_xsqlserverendpoint.original_parameters[:dsc_ensure] = 'absent'
        dsc_xsqlserverendpoint[:dsc_ensure] = 'absent'
        @provider = described_class.provider(:powershell).new(dsc_xsqlserverendpoint)
      end

      it "should update :ensure to :absent" do
        expect(dsc_xsqlserverendpoint[:ensure]).to eq(:absent)
      end

      it "should compute powershell dsc test script in which ensure value is 'present'" do
        expect(@provider.ps_script_content('test')).to match(/ensure = 'present'/)
      end

      it "should compute powershell dsc set script in which ensure value is 'absent'" do
        expect(@provider.ps_script_content('set')).to match(/ensure = 'absent'/)
      end

    end

  end
end