<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="MVCProject" generation="1" functional="0" release="0" Id="22667351-176a-4017-ad4b-bac4c6c21ba2" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="MVCProjectGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="MvcWebRole1:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/MVCProject/MVCProjectGroup/LB:MvcWebRole1:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="MvcWebRole1Instances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/MVCProject/MVCProjectGroup/MapMvcWebRole1Instances" />
          </maps>
        </aCS>
        <aCS name="MvcWebRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/MVCProject/MVCProjectGroup/MapMvcWebRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="MvcWebRole1:?IsSimulationEnvironment?" defaultValue="">
          <maps>
            <mapMoniker name="/MVCProject/MVCProjectGroup/MapMvcWebRole1:?IsSimulationEnvironment?" />
          </maps>
        </aCS>
        <aCS name="MvcWebRole1:?RoleHostDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/MVCProject/MVCProjectGroup/MapMvcWebRole1:?RoleHostDebugger?" />
          </maps>
        </aCS>
        <aCS name="MvcWebRole1:?StartupTaskDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/MVCProject/MVCProjectGroup/MapMvcWebRole1:?StartupTaskDebugger?" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:MvcWebRole1:Endpoint1">
          <toPorts>
            <inPortMoniker name="/MVCProject/MVCProjectGroup/MvcWebRole1/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapMvcWebRole1Instances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/MVCProject/MVCProjectGroup/MvcWebRole1Instances" />
          </setting>
        </map>
        <map name="MapMvcWebRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/MVCProject/MVCProjectGroup/MvcWebRole1/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapMvcWebRole1:?IsSimulationEnvironment?" kind="Identity">
          <setting>
            <aCSMoniker name="/MVCProject/MVCProjectGroup/MvcWebRole1/?IsSimulationEnvironment?" />
          </setting>
        </map>
        <map name="MapMvcWebRole1:?RoleHostDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/MVCProject/MVCProjectGroup/MvcWebRole1/?RoleHostDebugger?" />
          </setting>
        </map>
        <map name="MapMvcWebRole1:?StartupTaskDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/MVCProject/MVCProjectGroup/MvcWebRole1/?StartupTaskDebugger?" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="MvcWebRole1" generation="1" functional="0" release="0" software="D:\MVCProject\bin\Debug\MVCProject.csx\roles\MvcWebRole1" entryPoint="base\x86\WaHostBootstrapper.exe" parameters="base\x86\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="?IsSimulationEnvironment?" defaultValue="" />
              <aCS name="?RoleHostDebugger?" defaultValue="" />
              <aCS name="?StartupTaskDebugger?" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;MvcWebRole1&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;MvcWebRole1&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/MVCProject/MVCProjectGroup/MvcWebRole1Instances" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyID name="MvcWebRole1Instances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="30f48846-4acc-4eca-8156-eaf06aba1f05" ref="Microsoft.RedDog.Contract\ServiceContract\MVCProjectContract@ServiceDefinition.build">
      <interfacereferences>
        <interfaceReference Id="c1e6024a-17c9-4d32-af48-4eb3f22a9e6a" ref="Microsoft.RedDog.Contract\Interface\MvcWebRole1:Endpoint1@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/MVCProject/MVCProjectGroup/MvcWebRole1:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>