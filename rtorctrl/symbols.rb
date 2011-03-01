#!/usr/bin/env ruby
#

module Tor
	module Conf
		module DataTypes
			class DataSize
			end

			class CommaList
			end

			class LineList
			end

			class TimeInterval
			end

			class Boolean
			end

			AccountingMax = DataSize
		end
		module Keys
			AccountingMax = :AccountingMax
			AccountingStart = :AccountingStart
			Address = :Address
			AllowInvalidNodes = :AllowInvalidNodes
			AllowNonRFC953Hostnames = :AllowNonRFC953Hostnames
			AllowSingleHopCircuits = :AllowSingleHopCircuits
			AllowSingleHopExits = :AllowSingleHopExits
			AlternateBridgeAuthority = :AlternateBridgeAuthority
			AlternateDirAuthority = :AlternateDirAuthority
			AlternateHSAuthority = :AlternateHSAuthority
			AssumeReachable = :AssumeReachable
			AuthDirBadDir = :AuthDirBadDir
			AuthDirBadExit = :AuthDirBadExit
			AuthDirInvalid = :AuthDirInvalid
			AuthDirReject = :AuthDirReject
			AuthDirRejectUnlisted = :AuthDirRejectUnlisted
			AuthDirListBadDirs = :AuthDirListBadDirs
			AuthDirListBadExits = :AuthDirListBadExits
			AuthDirMaxServersPerAddr = :AuthDirMaxServersPerAddr
			AuthDirMaxServersPerAuthAddr = :AuthDirMaxServersPerAuthAddr
			AuthoritativeDirectory = :AuthoritativeDirectory
			AutomapHostsOnResolve = :AutomapHostsOnResolve
			AutomapHostsSuffixes = :AutomapHostsSuffixes
			AvoidDiskWrites = :AvoidDiskWrites
			BandwidthBurst = :BandwidthBurst
			BandwidthRate = :BandwidthRate
			BridgeAuthoritativeDir = :BridgeAuthoritativeDir
			Bridge = :Bridge
			BridgePassword = :BridgePassword
			BridgeRecordUsageByCountry = :BridgeRecordUsageByCountry
			BridgeRelay = :BridgeRelay
			CircuitBuildTimeout = :CircuitBuildTimeout
			CircuitIdleTimeout = :CircuitIdleTimeout
			ClientDNSRejectInternalAddresses = :ClientDNSRejectInternalAddresses
			ClientOnly = :ClientOnly
			ConnLimit = :ConnLimit
			ConstrainedSockets = :ConstrainedSockets
			ConstrainedSockSize = :ConstrainedSockSize
			ContactInfo = :ContactInfo
			ControlListenAddress = :ControlListenAddress
			ControlPort = :ControlPort
			ControlSocket = :ControlSocket
			CookieAuthentication = :CookieAuthentication
			CookieAuthFileGroupReadable = :CookieAuthFileGroupReadable
			CookieAuthFile = :CookieAuthFile
			DataDirectory = :DataDirectory
			DirAllowPrivateAddresses = :DirAllowPrivateAddresses
			TestingAuthDirTimeToLearnReachability = :TestingAuthDirTimeToLearnReachability
			DirListenAddress = :DirListenAddress
			DirPolicy = :DirPolicy
			DirPort = :DirPort
			DirPortFrontPage = :DirPortFrontPage
			DirServer = :DirServer
			DNSPort = :DNSPort
			DNSListenAddress = :DNSListenAddress
			DownloadExtraInfo = :DownloadExtraInfo
			EnforceDistinctSubnets = :EnforceDistinctSubnets
			EntryNodes = :EntryNodes
			TestingEstimatedDescriptorPropagationTime = :TestingEstimatedDescriptorPropagationTime
			ExcludeNodes = :ExcludeNodes
			ExcludeExitNodes = :ExcludeExitNodes
			ExcludeSingleHopRelays = :ExcludeSingleHopRelays
			ExitNodes = :ExitNodes
			ExitPolicy = :ExitPolicy
			ExitPolicyRejectPrivate = :ExitPolicyRejectPrivate
			FallbackNetworkstatusFile = :FallbackNetworkstatusFile
			FascistFirewall = :FascistFirewall
			FirewallPorts = :FirewallPorts
			FastFirstHopPK = :FastFirstHopPK
			FetchDirInfoEarly = :FetchDirInfoEarly
			FetchServerDescriptors = :FetchServerDescriptors
			FetchHidServDescriptors = :FetchHidServDescriptors
			FetchUselessDescriptors = :FetchUselessDescriptors
			GeoIPFile = :GeoIPFile
			HardwareAccel = :HardwareAccel
			HashedControlPassword = :HashedControlPassword
			HidServDirectoryV2 = :HidServDirectoryV2
			HiddenServiceDir = :HiddenServiceDir
			HiddenServiceOptions = :HiddenServiceOptions
			HiddenServicePort = :HiddenServicePort
			HiddenServiceVersion = :HiddenServiceVersion
			HiddenServiceAuthorizeClient = :HiddenServiceAuthorizeClient
			HidServAuth = :HidServAuth
			HSAuthoritativeDir = :HSAuthoritativeDir
			HSAuthorityRecordStats = :HSAuthorityRecordStats
			HttpProxy = :HttpProxy
			HttpProxyAuthenticator = :HttpProxyAuthenticator
			HttpsProxy = :HttpsProxy
			HttpsProxyAuthenticator = :HttpsProxyAuthenticator
			KeepalivePeriod = :KeepalivePeriod
			Log = :Log
			LongLivedPorts = :LongLivedPorts
			MapAddress = :MapAddress
			MaxAdvertisedBandwidth = :MaxAdvertisedBandwidth
			MaxCircuitDirtiness = :MaxCircuitDirtiness
			MaxOnionsPending = :MaxOnionsPending
			MyFamily = :MyFamily
			NewCircuitPeriod = :NewCircuitPeriod
			NamingAuthoritativeDirectory = :NamingAuthoritativeDirectory
			NatdListenAddress = :NatdListenAddress
			NatdPort = :NatdPort
			Nickname = :Nickname
			NoPublish = :NoPublish
			NodeFamily = :NodeFamily
			NumCpus = :NumCpus
			NumEntryGuards = :NumEntryGuards
			ORListenAddress = :ORListenAddress
			ORPort = :ORPort
			OutboundBindAddress = :OutboundBindAddress
			PidFile = :PidFile
			TestingTorNetwork = :TestingTorNetwork
			PreferTunneledDirConns = :PreferTunneledDirConns
			ProtocolWarnings = :ProtocolWarnings
			PublishServerDescriptor = :PublishServerDescriptor
			PublishHidServDescriptors = :PublishHidServDescriptors
			ReachableAddresses = :ReachableAddresses
			ReachableDirAddresses = :ReachableDirAddresses
			ReachableORAddresses = :ReachableORAddresses
			RecommendedVersions = :RecommendedVersions
			RecommendedClientVersions = :RecommendedClientVersions
			RecommendedServerVersions = :RecommendedServerVersions
			RejectPlaintextPorts = :RejectPlaintextPorts
			RelayBandwidthBurst = :RelayBandwidthBurst
			RelayBandwidthRate = :RelayBandwidthRate
			RendPostPeriod = :RendPostPeriod
			RephistTrackTime = :RephistTrackTime
			RunAsDaemon = :RunAsDaemon
			RunTesting = :RunTesting
			SafeLogging = :SafeLogging
			SafeSocks = :SafeSocks
			ServerDNSAllowBrokenConfig = :ServerDNSAllowBrokenConfig
			ServerDNSAllowNonRFC953Hostnames = :ServerDNSAllowNonRFC953Hostnames
			ServerDNSDetectHijacking = :ServerDNSDetectHijacking
			ServerDNSRandomizeCase = :ServerDNSRandomizeCase
			ServerDNSResolvConfFile = :ServerDNSResolvConfFile
			ServerDNSSearchDomains = :ServerDNSSearchDomains
			ServerDNSTestAddresses = :ServerDNSTestAddresses
			ShutdownWaitLength = :ShutdownWaitLength
			SocksListenAddress = :SocksListenAddress
			SocksPolicy = :SocksPolicy
			SocksPort = :SocksPort
			SocksTimeout = :SocksTimeout
			StrictEntryNodes = :StrictEntryNodes
			StrictExitNodes = :StrictExitNodes
			TestSocks = :TestSocks
			TrackHostExits = :TrackHostExits
			TrackHostExitsExpire = :TrackHostExitsExpire
			TransListenAddress = :TransListenAddress
			TransPort = :TransPort
			TunnelDirConns = :TunnelDirConns
			UpdateBridgesFromAuthority = :UpdateBridgesFromAuthority
			UseBridges = :UseBridges
			UseEntryGuards = :UseEntryGuards
			User = :User
			V1AuthoritativeDirectory = :V1AuthoritativeDirectory
			V2AuthoritativeDirectory = :V2AuthoritativeDirectory
			V3AuthoritativeDirectory = :V3AuthoritativeDirectory
			TestingV3AuthInitialVotingInterval = :TestingV3AuthInitialVotingInterval
			TestingV3AuthInitialVoteDelay = :TestingV3AuthInitialVoteDelay
			TestingV3AuthInitialDistDelay = :TestingV3AuthInitialDistDelay
			V3AuthVotingInterval = :V3AuthVotingInterval
			V3AuthVoteDelay = :V3AuthVoteDelay
			V3AuthDistDelay = :V3AuthDistDelay
			V3AuthNIntervalsValid = :V3AuthNIntervalsValid
			V3AuthUseLegacyKey = :V3AuthUseLegacyKey
			VersioningAuthoritativeDirectory = :VersioningAuthoritativeDirectory
			VirtualAddrNetwork = :VirtualAddrNetwork
			WarnPlaintextPorts = :WarnPlaintextPorts
			ReloadTorrcOnSIGHUP = :__ReloadTorrcOnSIGHUP
			AllDirActionsPrivate = :__AllDirActionsPrivate
			DisablePredictedCircuits = :__DisablePredictedCircuits
			LeaveStreamsUnattached = :__LeaveStreamsUnattached
			HashedControlSessionPassword = :__HashedControlSessionPassword
			MinUptimeHidServDirectoryV2 = :MinUptimeHidServDirectoryV2
		end
	end

	module Signals
		RELOAD = :RELOAD
		SHUTDOWN = :SHUTDOWN
		DUMP = :DUMP
		DEBUG = :DEBUG
		HALT = :HALT
		HUP = :HUP
		INT = :INT
		USR1 = :USR1
		USR2 = :USR2
		TERM = :TERM
		NEWNYM = :NEWNYM
		CLEARDNSCACHE = :CLEARDNSCACHE
	end
end

