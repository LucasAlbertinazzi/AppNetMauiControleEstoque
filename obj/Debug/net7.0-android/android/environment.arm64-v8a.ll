; ModuleID = 'obj\Debug\net7.0-android\android\environment.arm64-v8a.ll'
source_filename = "obj\Debug\net7.0-android\android\environment.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.ApplicationConfig = type {
	i8,; bool uses_mono_llvm
	i8,; bool uses_mono_aot
	i8,; bool aot_lazy_load
	i8,; bool uses_assembly_preload
	i8,; bool is_a_bundled_app
	i8,; bool broken_exception_transitions
	i8,; bool instant_run_enabled
	i8,; bool jni_add_native_method_registration_attribute_present
	i8,; bool have_runtime_config_blob
	i8,; bool have_assemblies_blob
	i8,; uint8_t bound_stream_io_exception_type
	i32,; uint32_t package_naming_policy
	i32,; uint32_t environment_variable_count
	i32,; uint32_t system_property_count
	i32,; uint32_t number_of_assemblies_in_apk
	i32,; uint32_t bundled_assembly_name_width
	i32,; uint32_t number_of_assembly_store_files
	i32,; uint32_t number_of_dso_cache_entries
	i32,; uint32_t android_runtime_jnienv_class_token
	i32,; uint32_t jnienv_initialize_method_token
	i32,; uint32_t jnienv_registerjninatives_method_token
	i32,; uint32_t jni_remapping_replacement_type_count
	i32,; uint32_t jni_remapping_replacement_method_index_entry_count
	i32,; uint32_t mono_components_mask
	i8*; char* android_package_name
}

%struct.AssemblyStoreAssemblyDescriptor = type {
	i32,; uint32_t data_offset
	i32,; uint32_t data_size
	i32,; uint32_t debug_data_offset
	i32,; uint32_t debug_data_size
	i32,; uint32_t config_data_offset
	i32; uint32_t config_data_size
}

%struct.AssemblyStoreSingleAssemblyRuntimeData = type {
	i8*,; uint8_t* image_data
	i8*,; uint8_t* debug_info_data
	i8*,; uint8_t* config_data
	%struct.AssemblyStoreAssemblyDescriptor*; AssemblyStoreAssemblyDescriptor* descriptor
}

%struct.AssemblyStoreRuntimeData = type {
	i8*,; uint8_t* data_start
	i32,; uint32_t assembly_count
	%struct.AssemblyStoreAssemblyDescriptor*; AssemblyStoreAssemblyDescriptor* assemblies
}

%struct.XamarinAndroidBundledAssembly = type {
	i32,; int32_t apk_fd
	i32,; uint32_t data_offset
	i32,; uint32_t data_size
	i8*,; uint8_t* data
	i32,; uint32_t name_length
	i8*; char* name
}

%struct.DSOCacheEntry = type {
	i64,; uint64_t hash
	i8,; bool ignore
	i8*,; char* name
	i8*; void* handle
}

@format_tag = local_unnamed_addr constant i64 385281960275288, align 8
@__mono_aot_mode_name = internal constant [7 x i8] c"normal\00", align 1
@mono_aot_mode_name = local_unnamed_addr constant i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__mono_aot_mode_name, i64 0, i64 0), align 8

; app_environment_variables
@__app_environment_variables_n_0.0 = internal constant [29 x i8] c"DOTNET_MODIFIABLE_ASSEMBLIES\00", align 1
@__app_environment_variables_v_0.1 = internal constant [6 x i8] c"Debug\00", align 1
@__app_environment_variables_n_1.2 = internal constant [15 x i8] c"MONO_GC_PARAMS\00", align 1
@__app_environment_variables_v_1.3 = internal constant [21 x i8] c"major=marksweep-conc\00", align 1
@__app_environment_variables_n_2.4 = internal constant [15 x i8] c"MONO_LOG_LEVEL\00", align 1
@__app_environment_variables_v_2.5 = internal constant [5 x i8] c"info\00", align 1
@__app_environment_variables_n_3.6 = internal constant [17 x i8] c"XAMARIN_BUILD_ID\00", align 1
@__app_environment_variables_v_3.7 = internal constant [37 x i8] c"fe1b5e49-d79f-43e3-b993-091a508eec85\00", align 1
@__app_environment_variables_n_4.8 = internal constant [28 x i8] c"XA_HTTP_CLIENT_HANDLER_TYPE\00", align 1
@__app_environment_variables_v_4.9 = internal constant [42 x i8] c"Xamarin.Android.Net.AndroidMessageHandler\00", align 1
@__app_environment_variables_n_5.10 = internal constant [29 x i8] c"__XA_PACKAGE_NAMING_POLICY__\00", align 1
@__app_environment_variables_v_5.11 = internal constant [15 x i8] c"LowercaseCrc64\00", align 1

@app_environment_variables = local_unnamed_addr constant [12 x i8*] [
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__app_environment_variables_n_0.0, i32 0, i32 0),
	i8* getelementptr inbounds ([6 x i8], [6 x i8]* @__app_environment_variables_v_0.1, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__app_environment_variables_n_1.2, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__app_environment_variables_v_1.3, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__app_environment_variables_n_2.4, i32 0, i32 0),
	i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__app_environment_variables_v_2.5, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__app_environment_variables_n_3.6, i32 0, i32 0),
	i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__app_environment_variables_v_3.7, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__app_environment_variables_n_4.8, i32 0, i32 0),
	i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__app_environment_variables_v_4.9, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__app_environment_variables_n_5.10, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__app_environment_variables_v_5.11, i32 0, i32 0)
], align 8

; app_system_properties
@app_system_properties = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__ApplicationConfig_android_package_name.0 = internal constant [27 x i8] c"com.companyname.AppNetMaui\00", align 1

; application_config
@application_config = local_unnamed_addr constant %struct.ApplicationConfig {
	i8 0, ; uses_mono_llvm
	i8 1, ; uses_mono_aot
	i8 0, ; aot_lazy_load
	i8 0, ; uses_assembly_preload
	i8 0, ; is_a_bundled_app
	i8 0, ; broken_exception_transitions
	i8 0, ; instant_run_enabled
	i8 0, ; jni_add_native_method_registration_attribute_present
	i8 1, ; have_runtime_config_blob
	i8 0, ; have_assemblies_blob
	i8 0, ; bound_stream_io_exception_type
	i32 3, ; package_naming_policy
	i32 12, ; environment_variable_count
	i32 0, ; system_property_count
	i32 284, ; number_of_assemblies_in_apk
	i32 68, ; bundled_assembly_name_width
	i32 2, ; number_of_assembly_store_files
	i32 1740, ; number_of_dso_cache_entries
	i32 33560110, ; android_runtime_jnienv_class_token
	i32 100762566, ; jnienv_initialize_method_token
	i32 100762565, ; jnienv_registerjninatives_method_token
	i32 0, ; jni_remapping_replacement_type_count
	i32 0, ; jni_remapping_replacement_method_index_entry_count
	i32 3, ; mono_components_mask
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__ApplicationConfig_android_package_name.0, i32 0, i32 0); android_package_name
}, align 8

@__DSOCacheEntry_name.1 = internal constant [29 x i8] c"libaot-System.Buffers.dll.so\00", align 1
@__DSOCacheEntry_name.2 = internal constant [44 x i8] c"libaot-Xamarin.AndroidX.Fragment.Ktx.dll.so\00", align 1
@__DSOCacheEntry_name.3 = internal constant [40 x i8] c"libaot-Xamarin.AndroidX.CardView.dll.so\00", align 1
@__DSOCacheEntry_name.4 = internal constant [48 x i8] c"libaot-Xamarin.AndroidX.DynamicAnimation.dll.so\00", align 1
@__DSOCacheEntry_name.5 = internal constant [43 x i8] c"libaot-System.Net.WebSockets.Client.dll.so\00", align 1
@__DSOCacheEntry_name.6 = internal constant [39 x i8] c"libaot-Plugin.LocalNotification.dll.so\00", align 1
@__DSOCacheEntry_name.7 = internal constant [40 x i8] c"libaot-System.Threading.Channels.dll.so\00", align 1
@__DSOCacheEntry_name.8 = internal constant [56 x i8] c"libaot-Microsoft.Extensions.Caching.Abstractions.dll.so\00", align 1
@__DSOCacheEntry_name.9 = internal constant [47 x i8] c"libaot-Xamarin.GooglePlayServices.Tasks.dll.so\00", align 1
@__DSOCacheEntry_name.10 = internal constant [52 x i8] c"libaot-System.ComponentModel.DataAnnotations.dll.so\00", align 1
@__DSOCacheEntry_name.11 = internal constant [46 x i8] c"libaot-Xamarin.GooglePlayServices.Base.dll.so\00", align 1
@__DSOCacheEntry_name.12 = internal constant [27 x i8] c"libaot-Mono.Android.dll.so\00", align 1
@__DSOCacheEntry_name.13 = internal constant [38 x i8] c"libaot-Xamarin.AndroidX.Emoji2.dll.so\00", align 1
@__DSOCacheEntry_name.14 = internal constant [37 x i8] c"libaot-System.Runtime.Handles.dll.so\00", align 1
@__DSOCacheEntry_name.15 = internal constant [26 x i8] c"libaot-WindowsBase.dll.so\00", align 1
@__DSOCacheEntry_name.16 = internal constant [46 x i8] c"libaot-Microsoft.Extensions.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.17 = internal constant [50 x i8] c"libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so\00", align 1
@__DSOCacheEntry_name.18 = internal constant [30 x i8] c"libaot-System.Security.dll.so\00", align 1
@__DSOCacheEntry_name.19 = internal constant [36 x i8] c"libaot-System.ServiceProcess.dll.so\00", align 1
@__DSOCacheEntry_name.20 = internal constant [25 x i8] c"libaot-AppNetMaui.dll.so\00", align 1
@__DSOCacheEntry_name.21 = internal constant [41 x i8] c"libaot-System.Net.Http.Formatting.dll.so\00", align 1
@__DSOCacheEntry_name.22 = internal constant [38 x i8] c"libaot-System.Threading.Thread.dll.so\00", align 1
@__DSOCacheEntry_name.23 = internal constant [38 x i8] c"libaot-Microsoft.Maui.Graphics.dll.so\00", align 1
@__DSOCacheEntry_name.24 = internal constant [49 x i8] c"libaot-Microsoft.Extensions.Configuration.dll.so\00", align 1
@__DSOCacheEntry_name.25 = internal constant [24 x i8] c"libaot-System.IO.dll.so\00", align 1
@__DSOCacheEntry_name.26 = internal constant [46 x i8] c"libaot-System.Globalization.Extensions.dll.so\00", align 1
@__DSOCacheEntry_name.27 = internal constant [59 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so\00", align 1
@__DSOCacheEntry_name.28 = internal constant [35 x i8] c"libaot-System.Net.Http.Json.dll.so\00", align 1
@__DSOCacheEntry_name.29 = internal constant [45 x i8] c"libaot-System.IO.FileSystem.DriveInfo.dll.so\00", align 1
@__DSOCacheEntry_name.30 = internal constant [36 x i8] c"libaot-System.Net.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.31 = internal constant [49 x i8] c"libaot-Xamarin.AndroidX.Navigation.Common.dll.so\00", align 1
@__DSOCacheEntry_name.32 = internal constant [49 x i8] c"libaot-Xamarin.AndroidX.SlidingPaneLayout.dll.so\00", align 1
@__DSOCacheEntry_name.33 = internal constant [46 x i8] c"libaot-Xamarin.Google.Android.Material.dll.so\00", align 1
@__DSOCacheEntry_name.34 = internal constant [30 x i8] c"libaot-Newtonsoft.Json.dll.so\00", align 1
@__DSOCacheEntry_name.35 = internal constant [29 x i8] c"libaot-System.Console.dll.so\00", align 1
@__DSOCacheEntry_name.36 = internal constant [35 x i8] c"libaot-System.Net.WebClient.dll.so\00", align 1
@__DSOCacheEntry_name.37 = internal constant [41 x i8] c"libaot-Microsoft.VisualBasic.Core.dll.so\00", align 1
@__DSOCacheEntry_name.38 = internal constant [51 x i8] c"libaot-Xamarin.AndroidX.AsyncLayoutInflater.dll.so\00", align 1
@__DSOCacheEntry_name.39 = internal constant [53 x i8] c"libaot-Xamarin.AndroidX.ConstraintLayout.Core.dll.so\00", align 1
@__DSOCacheEntry_name.40 = internal constant [48 x i8] c"libaot-System.Runtime.Serialization.Json.dll.so\00", align 1
@__DSOCacheEntry_name.41 = internal constant [35 x i8] c"libaot-System.Linq.Parallel.dll.so\00", align 1
@__DSOCacheEntry_name.42 = internal constant [54 x i8] c"libaot-Xamarin.AndroidX.Legacy.Support.Core.UI.dll.so\00", align 1
@__DSOCacheEntry_name.43 = internal constant [54 x i8] c"libaot-System.Security.Cryptography.Algorithms.dll.so\00", align 1
@__DSOCacheEntry_name.44 = internal constant [37 x i8] c"libaot-System.Web.HttpUtility.dll.so\00", align 1
@__DSOCacheEntry_name.45 = internal constant [29 x i8] c"libaot-Microsoft.Maui.dll.so\00", align 1
@__DSOCacheEntry_name.46 = internal constant [46 x i8] c"libaot-System.IO.UnmanagedMemoryStream.dll.so\00", align 1
@__DSOCacheEntry_name.47 = internal constant [55 x i8] c"libaot-Xamarin.AndroidX.Annotation.Experimental.dll.so\00", align 1
@__DSOCacheEntry_name.48 = internal constant [50 x i8] c"libaot-Xamarin.GooglePlayServices.Location.dll.so\00", align 1
@__DSOCacheEntry_name.49 = internal constant [48 x i8] c"libaot-Xamarin.Android.Glide.Annotations.dll.so\00", align 1
@__DSOCacheEntry_name.50 = internal constant [49 x i8] c"libaot-Xamarin.Google.Crypto.Tink.Android.dll.so\00", align 1
@__DSOCacheEntry_name.51 = internal constant [48 x i8] c"libaot-System.Security.Principal.Windows.dll.so\00", align 1
@__DSOCacheEntry_name.52 = internal constant [37 x i8] c"libaot-System.Threading.Tasks.dll.so\00", align 1
@__DSOCacheEntry_name.53 = internal constant [36 x i8] c"libaot-System.ComponentModel.dll.so\00", align 1
@__DSOCacheEntry_name.54 = internal constant [44 x i8] c"libaot-Xamarin.AndroidX.RecyclerView.dll.so\00", align 1
@__DSOCacheEntry_name.55 = internal constant [41 x i8] c"libaot-System.Reflection.Metadata.dll.so\00", align 1
@__DSOCacheEntry_name.56 = internal constant [42 x i8] c"libaot-Xamarin.AndroidX.Transition.dll.so\00", align 1
@__DSOCacheEntry_name.57 = internal constant [43 x i8] c"libaot-System.Reflection.Extensions.dll.so\00", align 1
@__DSOCacheEntry_name.58 = internal constant [40 x i8] c"libaot-System.Transactions.Local.dll.so\00", align 1
@__DSOCacheEntry_name.59 = internal constant [46 x i8] c"libaot-System.Text.Encoding.Extensions.dll.so\00", align 1
@__DSOCacheEntry_name.60 = internal constant [23 x i8] c"libaot-mscorlib.dll.so\00", align 1
@__DSOCacheEntry_name.61 = internal constant [35 x i8] c"libaot-System.Configuration.dll.so\00", align 1
@__DSOCacheEntry_name.62 = internal constant [25 x i8] c"libaot-System.Web.dll.so\00", align 1
@__DSOCacheEntry_name.63 = internal constant [43 x i8] c"libaot-System.Reflection.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.64 = internal constant [31 x i8] c"libaot-Microsoft.CSharp.dll.so\00", align 1
@__DSOCacheEntry_name.65 = internal constant [46 x i8] c"libaot-System.Threading.Tasks.Parallel.dll.so\00", align 1
@__DSOCacheEntry_name.66 = internal constant [40 x i8] c"libaot-System.Net.NameResolution.dll.so\00", align 1
@__DSOCacheEntry_name.67 = internal constant [45 x i8] c"libaot-System.Text.RegularExpressions.dll.so\00", align 1
@__DSOCacheEntry_name.68 = internal constant [33 x i8] c"libaot-System.ObjectModel.dll.so\00", align 1
@__DSOCacheEntry_name.69 = internal constant [49 x i8] c"libaot-Xamarin.AndroidX.Arch.Core.Runtime.dll.so\00", align 1
@__DSOCacheEntry_name.70 = internal constant [36 x i8] c"libaot-System.Net.WebSockets.dll.so\00", align 1
@__DSOCacheEntry_name.71 = internal constant [26 x i8] c"libaot-System.Data.dll.so\00", align 1
@__DSOCacheEntry_name.72 = internal constant [43 x i8] c"libaot-System.Security.SecureString.dll.so\00", align 1
@__DSOCacheEntry_name.73 = internal constant [52 x i8] c"libaot-System.ComponentModel.EventBasedAsync.dll.so\00", align 1
@__DSOCacheEntry_name.74 = internal constant [36 x i8] c"libaot-System.IO.Compression.dll.so\00", align 1
@__DSOCacheEntry_name.75 = internal constant [30 x i8] c"libmono-component-debugger.so\00", align 1
@__DSOCacheEntry_name.76 = internal constant [54 x i8] c"libaot-System.Runtime.CompilerServices.VisualC.dll.so\00", align 1
@__DSOCacheEntry_name.77 = internal constant [45 x i8] c"libaot-Xamarin.AndroidX.CursorAdapter.dll.so\00", align 1
@__DSOCacheEntry_name.78 = internal constant [55 x i8] c"libaot-System.Private.DataContractSerialization.dll.so\00", align 1
@__DSOCacheEntry_name.79 = internal constant [36 x i8] c"libaot-Xamarin.AndroidX.Core.dll.so\00", align 1
@__DSOCacheEntry_name.80 = internal constant [43 x i8] c"libaot-System.Security.Cryptography.dll.so\00", align 1
@__DSOCacheEntry_name.81 = internal constant [26 x i8] c"libaot-System.Core.dll.so\00", align 1
@__DSOCacheEntry_name.82 = internal constant [49 x i8] c"libaot-System.Diagnostics.FileVersionInfo.dll.so\00", align 1
@__DSOCacheEntry_name.83 = internal constant [43 x i8] c"libaot-System.Diagnostics.Contracts.dll.so\00", align 1
@__DSOCacheEntry_name.84 = internal constant [48 x i8] c"libaot-System.ComponentModel.Annotations.dll.so\00", align 1
@__DSOCacheEntry_name.85 = internal constant [37 x i8] c"libaot-Xamarin.AndroidX.Print.dll.so\00", align 1
@__DSOCacheEntry_name.86 = internal constant [44 x i8] c"libaot-Xamarin.AndroidX.DrawerLayout.dll.so\00", align 1
@__DSOCacheEntry_name.87 = internal constant [47 x i8] c"libaot-Xamarin.Android.Glide.GifDecoder.dll.so\00", align 1
@__DSOCacheEntry_name.88 = internal constant [40 x i8] c"libaot-System.Runtime.Extensions.dll.so\00", align 1
@__DSOCacheEntry_name.89 = internal constant [27 x i8] c"libaot-Java.Interop.dll.so\00", align 1
@__DSOCacheEntry_name.90 = internal constant [48 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so\00", align 1
@__DSOCacheEntry_name.91 = internal constant [42 x i8] c"libaot-Xamarin.AndroidX.Annotation.dll.so\00", align 1
@__DSOCacheEntry_name.92 = internal constant [37 x i8] c"libaot-System.Reflection.Emit.dll.so\00", align 1
@__DSOCacheEntry_name.93 = internal constant [34 x i8] c"libaot-System.Transactions.dll.so\00", align 1
@__DSOCacheEntry_name.94 = internal constant [30 x i8] c"libaot-System.Net.Ping.dll.so\00", align 1
@__DSOCacheEntry_name.95 = internal constant [41 x i8] c"libaot-Xamarin.Kotlin.StdLib.Jdk7.dll.so\00", align 1
@__DSOCacheEntry_name.96 = internal constant [42 x i8] c"libaot-System.Threading.Overlapped.dll.so\00", align 1
@__DSOCacheEntry_name.97 = internal constant [41 x i8] c"libaot-Xamarin.Kotlin.StdLib.Jdk8.dll.so\00", align 1
@__DSOCacheEntry_name.98 = internal constant [41 x i8] c"libaot-Microsoft.Win32.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.99 = internal constant [47 x i8] c"libaot-System.Reflection.TypeExtensions.dll.so\00", align 1
@__DSOCacheEntry_name.100 = internal constant [38 x i8] c"libaot-System.Linq.Expressions.dll.so\00", align 1
@__DSOCacheEntry_name.101 = internal constant [33 x i8] c"libaot-System.Collections.dll.so\00", align 1
@__DSOCacheEntry_name.102 = internal constant [52 x i8] c"libaot-Microsoft.Maui.Controls.Compatibility.dll.so\00", align 1
@__DSOCacheEntry_name.103 = internal constant [36 x i8] c"libaot-Xamarin.Kotlin.StdLib.dll.so\00", align 1
@__DSOCacheEntry_name.104 = internal constant [47 x i8] c"libaot-System.ComponentModel.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.105 = internal constant [42 x i8] c"libaot-Xamarin.AndroidX.Collection.dll.so\00", align 1
@__DSOCacheEntry_name.106 = internal constant [38 x i8] c"libaot-System.Runtime.Numerics.dll.so\00", align 1
@__DSOCacheEntry_name.107 = internal constant [45 x i8] c"libaot-System.Diagnostics.TraceSource.dll.so\00", align 1
@__DSOCacheEntry_name.108 = internal constant [26 x i8] c"libaot-netstandard.dll.so\00", align 1
@__DSOCacheEntry_name.109 = internal constant [46 x i8] c"libaot-System.Reflection.DispatchProxy.dll.so\00", align 1
@__DSOCacheEntry_name.110 = internal constant [42 x i8] c"libaot-System.IO.MemoryMappedFiles.dll.so\00", align 1
@__DSOCacheEntry_name.111 = internal constant [37 x i8] c"libaot-System.Security.Claims.dll.so\00", align 1
@__DSOCacheEntry_name.112 = internal constant [39 x i8] c"libaot-System.Diagnostics.Debug.dll.so\00", align 1
@__DSOCacheEntry_name.113 = internal constant [44 x i8] c"libaot-System.IO.Compression.ZipFile.dll.so\00", align 1
@__DSOCacheEntry_name.114 = internal constant [41 x i8] c"libaot-Xamarin.AndroidX.ViewPager.dll.so\00", align 1
@__DSOCacheEntry_name.115 = internal constant [53 x i8] c"libaot-System.Runtime.CompilerServices.Unsafe.dll.so\00", align 1
@__DSOCacheEntry_name.116 = internal constant [41 x i8] c"libaot-Xamarin.AndroidX.AppCompat.dll.so\00", align 1
@__DSOCacheEntry_name.117 = internal constant [50 x i8] c"libaot-System.Reflection.Emit.ILGeneration.dll.so\00", align 1
@__DSOCacheEntry_name.118 = internal constant [61 x i8] c"libaot-Xamarin.AndroidX.ResourceInspection.Annotation.dll.so\00", align 1
@__DSOCacheEntry_name.119 = internal constant [50 x i8] c"libaot-Microsoft.Extensions.Caching.Memory.dll.so\00", align 1
@__DSOCacheEntry_name.120 = internal constant [25 x i8] c"libaot-GoogleGson.dll.so\00", align 1
@__DSOCacheEntry_name.121 = internal constant [46 x i8] c"libaot-System.Threading.Tasks.Dataflow.dll.so\00", align 1
@__DSOCacheEntry_name.122 = internal constant [38 x i8] c"libaot-System.Net.HttpListener.dll.so\00", align 1
@__DSOCacheEntry_name.123 = internal constant [50 x i8] c"libSystem.Security.Cryptography.Native.Android.so\00", align 1
@__DSOCacheEntry_name.124 = internal constant [46 x i8] c"libaot-Xamarin.AndroidX.VectorDrawable.dll.so\00", align 1
@__DSOCacheEntry_name.125 = internal constant [44 x i8] c"libaot-System.Collections.NonGeneric.dll.so\00", align 1
@__DSOCacheEntry_name.126 = internal constant [45 x i8] c"libaot-System.Globalization.Calendars.dll.so\00", align 1
@__DSOCacheEntry_name.127 = internal constant [50 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.LiveData.dll.so\00", align 1
@__DSOCacheEntry_name.128 = internal constant [42 x i8] c"libaot-Xamarin.AndroidX.ViewPager2.dll.so\00", align 1
@__DSOCacheEntry_name.129 = internal constant [31 x i8] c"libaot-System.Xml.XPath.dll.so\00", align 1
@__DSOCacheEntry_name.130 = internal constant [62 x i8] c"libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so\00", align 1
@__DSOCacheEntry_name.131 = internal constant [44 x i8] c"libaot-Microsoft.EntityFrameworkCore.dll.so\00", align 1
@__DSOCacheEntry_name.132 = internal constant [42 x i8] c"libaot-Xamarin.AndroidX.SavedState.dll.so\00", align 1
@__DSOCacheEntry_name.133 = internal constant [38 x i8] c"libaot-System.ServiceModel.Web.dll.so\00", align 1
@__DSOCacheEntry_name.134 = internal constant [40 x i8] c"libaot-System.Drawing.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.135 = internal constant [32 x i8] c"libaot-System.Reflection.dll.so\00", align 1
@__DSOCacheEntry_name.136 = internal constant [35 x i8] c"libaot-Newtonsoft.Json.Bson.dll.so\00", align 1
@__DSOCacheEntry_name.137 = internal constant [55 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so\00", align 1
@__DSOCacheEntry_name.138 = internal constant [44 x i8] c"libaot-Xamarin.Jetbrains.Annotations.dll.so\00", align 1
@__DSOCacheEntry_name.139 = internal constant [55 x i8] c"libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so\00", align 1
@__DSOCacheEntry_name.140 = internal constant [34 x i8] c"libaot-System.Net.WebProxy.dll.so\00", align 1
@__DSOCacheEntry_name.141 = internal constant [43 x i8] c"libaot-Microsoft.Maui.Controls.Xaml.dll.so\00", align 1
@__DSOCacheEntry_name.142 = internal constant [32 x i8] c"libaot-System.ValueTuple.dll.so\00", align 1
@__DSOCacheEntry_name.143 = internal constant [30 x i8] c"libaot-System.Net.Quic.dll.so\00", align 1
@__DSOCacheEntry_name.144 = internal constant [50 x i8] c"libaot-System.ComponentModel.TypeConverter.dll.so\00", align 1
@__DSOCacheEntry_name.145 = internal constant [33 x i8] c"libaot-System.Data.Common.dll.so\00", align 1
@__DSOCacheEntry_name.146 = internal constant [44 x i8] c"libaot-System.IO.Pipes.AccessControl.dll.so\00", align 1
@__DSOCacheEntry_name.147 = internal constant [50 x i8] c"libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so\00", align 1
@__DSOCacheEntry_name.148 = internal constant [50 x i8] c"libaot-Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so\00", align 1
@__DSOCacheEntry_name.149 = internal constant [52 x i8] c"libaot-Xamarin.Google.Guava.ListenableFuture.dll.so\00", align 1
@__DSOCacheEntry_name.150 = internal constant [25 x i8] c"libaot-System.Xml.dll.so\00", align 1
@__DSOCacheEntry_name.151 = internal constant [43 x i8] c"libaot-Microsoft.Extensions.Options.dll.so\00", align 1
@__DSOCacheEntry_name.152 = internal constant [57 x i8] c"libaot-Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so\00", align 1
@__DSOCacheEntry_name.153 = internal constant [47 x i8] c"libaot-System.Resources.ResourceManager.dll.so\00", align 1
@__DSOCacheEntry_name.154 = internal constant [39 x i8] c"libaot-Xamarin.AndroidX.Browser.dll.so\00", align 1
@__DSOCacheEntry_name.155 = internal constant [44 x i8] c"libaot-System.Collections.Concurrent.dll.so\00", align 1
@__DSOCacheEntry_name.156 = internal constant [29 x i8] c"libaot-System.Windows.dll.so\00", align 1
@__DSOCacheEntry_name.157 = internal constant [50 x i8] c"libaot-System.Diagnostics.DiagnosticSource.dll.so\00", align 1
@__DSOCacheEntry_name.158 = internal constant [57 x i8] c"libaot-Microsoft.EntityFrameworkCore.Abstractions.dll.so\00", align 1
@__DSOCacheEntry_name.159 = internal constant [43 x i8] c"libaot-System.IO.FileSystem.Watcher.dll.so\00", align 1
@__DSOCacheEntry_name.160 = internal constant [55 x i8] c"libaot-Microsoft.Extensions.DependencyInjection.dll.so\00", align 1
@__DSOCacheEntry_name.161 = internal constant [32 x i8] c"libaot-System.AppContext.dll.so\00", align 1
@__DSOCacheEntry_name.162 = internal constant [40 x i8] c"libaot-System.Text.Encodings.Web.dll.so\00", align 1
@__DSOCacheEntry_name.163 = internal constant [28 x i8] c"libaot-System.Memory.dll.so\00", align 1
@__DSOCacheEntry_name.164 = internal constant [49 x i8] c"libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so\00", align 1
@__DSOCacheEntry_name.165 = internal constant [29 x i8] c"libaot-System.Runtime.dll.so\00", align 1
@__DSOCacheEntry_name.166 = internal constant [56 x i8] c"libaot-System.Runtime.InteropServices.JavaScript.dll.so\00", align 1
@__DSOCacheEntry_name.167 = internal constant [16 x i8] c"libSkiaSharp.so\00", align 1
@__DSOCacheEntry_name.168 = internal constant [31 x i8] c"libaot-System.Threading.dll.so\00", align 1
@__DSOCacheEntry_name.169 = internal constant [64 x i8] c"libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so\00", align 1
@__DSOCacheEntry_name.170 = internal constant [50 x i8] c"libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so\00", align 1
@__DSOCacheEntry_name.171 = internal constant [48 x i8] c"libaot-Xamarin.AndroidX.Arch.Core.Common.dll.so\00", align 1
@__DSOCacheEntry_name.172 = internal constant [54 x i8] c"libaot-System.Runtime.Serialization.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.173 = internal constant [51 x i8] c"libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so\00", align 1
@__DSOCacheEntry_name.174 = internal constant [31 x i8] c"libxamarin-debug-app-helper.so\00", align 1
@__DSOCacheEntry_name.175 = internal constant [38 x i8] c"libaot-System.Numerics.Vectors.dll.so\00", align 1
@__DSOCacheEntry_name.176 = internal constant [44 x i8] c"libaot-System.Net.NetworkInformation.dll.so\00", align 1
@__DSOCacheEntry_name.177 = internal constant [47 x i8] c"libaot-System.IO.Compression.FileSystem.dll.so\00", align 1
@__DSOCacheEntry_name.178 = internal constant [54 x i8] c"libaot-System.Security.Cryptography.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.179 = internal constant [40 x i8] c"libaot-System.Security.Principal.dll.so\00", align 1
@__DSOCacheEntry_name.180 = internal constant [38 x i8] c"libaot-System.Resources.Writer.dll.so\00", align 1
@__DSOCacheEntry_name.181 = internal constant [54 x i8] c"libaot-Xamarin.AndroidX.Startup.StartupRuntime.dll.so\00", align 1
@__DSOCacheEntry_name.182 = internal constant [26 x i8] c"libaot-Camera.MAUI.dll.so\00", align 1
@__DSOCacheEntry_name.183 = internal constant [38 x i8] c"libaot-System.Net.ServicePoint.dll.so\00", align 1
@__DSOCacheEntry_name.184 = internal constant [44 x i8] c"libaot-System.Security.AccessControl.dll.so\00", align 1
@__DSOCacheEntry_name.185 = internal constant [21 x i8] c"libaot-System.dll.so\00", align 1
@__DSOCacheEntry_name.186 = internal constant [45 x i8] c"libaot-System.Collections.Specialized.dll.so\00", align 1
@__DSOCacheEntry_name.187 = internal constant [54 x i8] c"libaot-System.Runtime.Serialization.Formatters.dll.so\00", align 1
@__DSOCacheEntry_name.188 = internal constant [52 x i8] c"libaot-System.Security.Cryptography.Encoding.dll.so\00", align 1
@__DSOCacheEntry_name.189 = internal constant [49 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.Process.dll.so\00", align 1
@__DSOCacheEntry_name.190 = internal constant [47 x i8] c"libaot-System.Runtime.Serialization.Xml.dll.so\00", align 1
@__DSOCacheEntry_name.191 = internal constant [24 x i8] c"libaot-SkiaSharp.dll.so\00", align 1
@__DSOCacheEntry_name.192 = internal constant [38 x i8] c"libaot-Microsoft.Maui.Controls.dll.so\00", align 1
@__DSOCacheEntry_name.193 = internal constant [45 x i8] c"libaot-Xamarin.AndroidX.Core.Core.Ktx.dll.so\00", align 1
@__DSOCacheEntry_name.194 = internal constant [30 x i8] c"libaot-System.Xml.Linq.dll.so\00", align 1
@__DSOCacheEntry_name.195 = internal constant [39 x i8] c"libaot-System.Xml.XmlSerializer.dll.so\00", align 1
@__DSOCacheEntry_name.196 = internal constant [46 x i8] c"libaot-Xamarin.AndroidX.Collection.Ktx.dll.so\00", align 1
@__DSOCacheEntry_name.197 = internal constant [20 x i8] c"libaot-zxing.dll.so\00", align 1
@__DSOCacheEntry_name.198 = internal constant [40 x i8] c"libaot-Microsoft.Maui.Essentials.dll.so\00", align 1
@__DSOCacheEntry_name.199 = internal constant [50 x i8] c"libaot-Xamarin.GooglePlayServices.Basement.dll.so\00", align 1
@__DSOCacheEntry_name.200 = internal constant [33 x i8] c"libaot-System.Net.Sockets.dll.so\00", align 1
@__DSOCacheEntry_name.201 = internal constant [43 x i8] c"libaot-System.IO.Compression.Brotli.dll.so\00", align 1
@__DSOCacheEntry_name.202 = internal constant [44 x i8] c"libaot-System.Data.DataSetExtensions.dll.so\00", align 1
@__DSOCacheEntry_name.203 = internal constant [30 x i8] c"libaot-System.Numerics.dll.so\00", align 1
@__DSOCacheEntry_name.204 = internal constant [60 x i8] c"libaot-System.Security.Cryptography.X509Certificates.dll.so\00", align 1
@__DSOCacheEntry_name.205 = internal constant [32 x i8] c"libmono-component-hot_reload.so\00", align 1
@__DSOCacheEntry_name.206 = internal constant [43 x i8] c"libaot-System.Collections.Immutable.dll.so\00", align 1
@__DSOCacheEntry_name.207 = internal constant [25 x i8] c"libaot-System.Net.dll.so\00", align 1
@__DSOCacheEntry_name.208 = internal constant [38 x i8] c"libaot-System.Xml.ReaderWriter.dll.so\00", align 1
@__DSOCacheEntry_name.209 = internal constant [49 x i8] c"libaot-System.Reflection.Emit.Lightweight.dll.so\00", align 1
@__DSOCacheEntry_name.210 = internal constant [51 x i8] c"libaot-Xamarin.AndroidX.VersionedParcelable.dll.so\00", align 1
@__DSOCacheEntry_name.211 = internal constant [37 x i8] c"libaot-System.Private.CoreLib.dll.so\00", align 1
@__DSOCacheEntry_name.212 = internal constant [43 x i8] c"libaot-System.Runtime.Serialization.dll.so\00", align 1
@__DSOCacheEntry_name.213 = internal constant [34 x i8] c"libaot-System.Net.Requests.dll.so\00", align 1
@__DSOCacheEntry_name.214 = internal constant [44 x i8] c"libaot-Xamarin.AndroidX.DocumentFile.dll.so\00", align 1
@__DSOCacheEntry_name.215 = internal constant [39 x i8] c"libaot-System.Diagnostics.Tools.dll.so\00", align 1
@__DSOCacheEntry_name.216 = internal constant [39 x i8] c"libaot-System.Xml.Serialization.dll.so\00", align 1
@__DSOCacheEntry_name.217 = internal constant [37 x i8] c"libaot-System.Xml.XmlDocument.dll.so\00", align 1
@__DSOCacheEntry_name.218 = internal constant [49 x i8] c"libaot-Xamarin.KotlinX.Coroutines.Android.dll.so\00", align 1
@__DSOCacheEntry_name.219 = internal constant [47 x i8] c"libaot-System.Security.Cryptography.Csp.dll.so\00", align 1
@__DSOCacheEntry_name.220 = internal constant [41 x i8] c"libaot-System.Diagnostics.Tracing.dll.so\00", align 1
@__DSOCacheEntry_name.221 = internal constant [45 x i8] c"libaot-System.Net.WebHeaderCollection.dll.so\00", align 1
@__DSOCacheEntry_name.222 = internal constant [42 x i8] c"libaot-System.Threading.ThreadPool.dll.so\00", align 1
@__DSOCacheEntry_name.223 = internal constant [48 x i8] c"libaot-System.Threading.Tasks.Extensions.dll.so\00", align 1
@__DSOCacheEntry_name.224 = internal constant [51 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so\00", align 1
@__DSOCacheEntry_name.225 = internal constant [46 x i8] c"libaot-System.IO.FileSystem.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.226 = internal constant [49 x i8] c"libaot-Xamarin.AndroidX.Legacy.Support.V4.dll.so\00", align 1
@__DSOCacheEntry_name.227 = internal constant [30 x i8] c"libaot-System.IO.Pipes.dll.so\00", align 1
@__DSOCacheEntry_name.228 = internal constant [38 x i8] c"libaot-Xamarin.AndroidX.Loader.dll.so\00", align 1
@__DSOCacheEntry_name.229 = internal constant [38 x i8] c"libaot-System.Private.Xml.Linq.dll.so\00", align 1
@__DSOCacheEntry_name.230 = internal constant [41 x i8] c"libaot-System.Diagnostics.Process.dll.so\00", align 1
@__DSOCacheEntry_name.231 = internal constant [35 x i8] c"libaot-System.IO.FileSystem.dll.so\00", align 1
@__DSOCacheEntry_name.232 = internal constant [29 x i8] c"libaot-System.Drawing.dll.so\00", align 1
@__DSOCacheEntry_name.233 = internal constant [39 x i8] c"libaot-Microsoft.Win32.Registry.dll.so\00", align 1
@__DSOCacheEntry_name.234 = internal constant [50 x i8] c"libaot-Xamarin.AndroidX.Concurrent.Futures.dll.so\00", align 1
@__DSOCacheEntry_name.235 = internal constant [53 x i8] c"libaot-Xamarin.AndroidX.LocalBroadcastManager.dll.so\00", align 1
@__DSOCacheEntry_name.236 = internal constant [45 x i8] c"libaot-System.Runtime.InteropServices.dll.so\00", align 1
@__DSOCacheEntry_name.237 = internal constant [38 x i8] c"libaot-System.Resources.Reader.dll.so\00", align 1
@__DSOCacheEntry_name.238 = internal constant [40 x i8] c"libaot-Xamarin.AndroidX.Activity.dll.so\00", align 1
@__DSOCacheEntry_name.239 = internal constant [44 x i8] c"libaot-Xamarin.AndroidX.Activity.Ktx.dll.so\00", align 1
@__DSOCacheEntry_name.240 = internal constant [53 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so\00", align 1
@__DSOCacheEntry_name.241 = internal constant [44 x i8] c"libaot-System.Diagnostics.StackTrace.dll.so\00", align 1
@__DSOCacheEntry_name.242 = internal constant [44 x i8] c"libaot-Xamarin.AndroidX.Interpolator.dll.so\00", align 1
@__DSOCacheEntry_name.243 = internal constant [43 x i8] c"libaot-Xamarin.Kotlin.StdLib.Common.dll.so\00", align 1
@__DSOCacheEntry_name.244 = internal constant [47 x i8] c"libaot-System.Security.Cryptography.Cng.dll.so\00", align 1
@__DSOCacheEntry_name.245 = internal constant [38 x i8] c"libaot-Xamarin.AndroidX.Window.dll.so\00", align 1
@__DSOCacheEntry_name.246 = internal constant [36 x i8] c"libaot-System.Runtime.Loader.dll.so\00", align 1
@__DSOCacheEntry_name.247 = internal constant [37 x i8] c"libaot-Xamarin.AndroidX.Media.dll.so\00", align 1
@__DSOCacheEntry_name.248 = internal constant [55 x i8] c"libaot-Xamarin.AndroidX.VectorDrawable.Animated.dll.so\00", align 1
@__DSOCacheEntry_name.249 = internal constant [49 x i8] c"libaot-Xamarin.Android.Glide.DiskLruCache.dll.so\00", align 1
@__DSOCacheEntry_name.250 = internal constant [48 x i8] c"libaot-Xamarin.AndroidX.ConstraintLayout.dll.so\00", align 1
@__DSOCacheEntry_name.251 = internal constant [30 x i8] c"libaot-System.Net.Mail.dll.so\00", align 1
@__DSOCacheEntry_name.252 = internal constant [45 x i8] c"libaot-Xamarin.AndroidX.ExifInterface.dll.so\00", align 1
@__DSOCacheEntry_name.253 = internal constant [36 x i8] c"libaot-Microsoft.VisualBasic.dll.so\00", align 1
@__DSOCacheEntry_name.254 = internal constant [45 x i8] c"libaot-System.Text.Encoding.CodePages.dll.so\00", align 1
@__DSOCacheEntry_name.255 = internal constant [40 x i8] c"libaot-System.Runtime.Intrinsics.dll.so\00", align 1
@__DSOCacheEntry_name.256 = internal constant [20 x i8] c"libSystem.Native.so\00", align 1
@__DSOCacheEntry_name.257 = internal constant [34 x i8] c"libaot-Mono.Android.Export.dll.so\00", align 1
@__DSOCacheEntry_name.258 = internal constant [41 x i8] c"libaot-System.Xml.XPath.XDocument.dll.so\00", align 1
@__DSOCacheEntry_name.259 = internal constant [34 x i8] c"libaot-System.Formats.Asn1.dll.so\00", align 1
@__DSOCacheEntry_name.260 = internal constant [49 x i8] c"libaot-System.IO.FileSystem.AccessControl.dll.so\00", align 1
@__DSOCacheEntry_name.261 = internal constant [68 x i8] c"libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so\00", align 1
@__DSOCacheEntry_name.262 = internal constant [35 x i8] c"libaot-System.Xml.XDocument.dll.so\00", align 1
@__DSOCacheEntry_name.263 = internal constant [57 x i8] c"libaot-Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so\00", align 1
@__DSOCacheEntry_name.264 = internal constant [33 x i8] c"libaot-System.Formats.Tar.dll.so\00", align 1
@__DSOCacheEntry_name.265 = internal constant [55 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so\00", align 1
@__DSOCacheEntry_name.266 = internal constant [49 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.Runtime.dll.so\00", align 1
@__DSOCacheEntry_name.267 = internal constant [61 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so\00", align 1
@__DSOCacheEntry_name.268 = internal constant [36 x i8] c"libaot-System.Linq.Queryable.dll.so\00", align 1
@__DSOCacheEntry_name.269 = internal constant [36 x i8] c"libaot-Xamarin.Android.Glide.dll.so\00", align 1
@__DSOCacheEntry_name.270 = internal constant [49 x i8] c"libaot-Microsoft.Extensions.Logging.Debug.dll.so\00", align 1
@__DSOCacheEntry_name.271 = internal constant [37 x i8] c"libaot-System.Threading.Timer.dll.so\00", align 1
@__DSOCacheEntry_name.272 = internal constant [35 x i8] c"libSystem.IO.Compression.Native.so\00", align 1
@__DSOCacheEntry_name.273 = internal constant [47 x i8] c"libaot-Xamarin.AndroidX.Tracing.Tracing.dll.so\00", align 1
@__DSOCacheEntry_name.274 = internal constant [57 x i8] c"libaot-System.Diagnostics.TextWriterTraceListener.dll.so\00", align 1
@__DSOCacheEntry_name.275 = internal constant [35 x i8] c"libaot-System.Text.Encoding.dll.so\00", align 1
@__DSOCacheEntry_name.276 = internal constant [26 x i8] c"libaot-System.Linq.dll.so\00", align 1
@__DSOCacheEntry_name.277 = internal constant [42 x i8] c"libaot-Xamarin.AndroidX.CustomView.dll.so\00", align 1
@__DSOCacheEntry_name.278 = internal constant [16 x i8] c"libmonodroid.so\00", align 1
@__DSOCacheEntry_name.279 = internal constant [60 x i8] c"libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so\00", align 1
@__DSOCacheEntry_name.280 = internal constant [34 x i8] c"libaot-System.Net.Security.dll.so\00", align 1
@__DSOCacheEntry_name.281 = internal constant [30 x i8] c"libaot-System.Net.Http.dll.so\00", align 1
@__DSOCacheEntry_name.282 = internal constant [31 x i8] c"libaot-System.Text.Json.dll.so\00", align 1
@__DSOCacheEntry_name.283 = internal constant [19 x i8] c"libmonosgen-2.0.so\00", align 1
@__DSOCacheEntry_name.284 = internal constant [51 x i8] c"libaot-System.Security.Cryptography.OpenSsl.dll.so\00", align 1
@__DSOCacheEntry_name.285 = internal constant [33 x i8] c"libaot-System.Private.Xml.dll.so\00", align 1
@__DSOCacheEntry_name.286 = internal constant [45 x i8] c"libaot-Xamarin.AndroidX.Navigation.UI.dll.so\00", align 1
@__DSOCacheEntry_name.287 = internal constant [33 x i8] c"libaot-System.Private.Uri.dll.so\00", align 1
@__DSOCacheEntry_name.288 = internal constant [40 x i8] c"libaot-Xamarin.AndroidX.Fragment.dll.so\00", align 1
@__DSOCacheEntry_name.289 = internal constant [43 x i8] c"libaot-Microsoft.Extensions.Logging.dll.so\00", align 1
@__DSOCacheEntry_name.290 = internal constant [35 x i8] c"libaot-System.Globalization.dll.so\00", align 1
@__DSOCacheEntry_name.291 = internal constant [56 x i8] c"libaot-Microsoft.Extensions.Logging.Abstractions.dll.so\00", align 1
@__DSOCacheEntry_name.292 = internal constant [40 x i8] c"libaot-System.IO.IsolatedStorage.dll.so\00", align 1
@__DSOCacheEntry_name.293 = internal constant [37 x i8] c"libaot-System.Dynamic.Runtime.dll.so\00", align 1

; dso_cache
@dso_cache = local_unnamed_addr global [1740 x %struct.DSOCacheEntry] [
	; 0
	%struct.DSOCacheEntry {
		i64 10013782901593326, ; hash 0x23937b84b514ee, from name: aot-System.Buffers.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1
	%struct.DSOCacheEntry {
		i64 12621202541717236, ; hash 0x2cd6eab62326f4, from name: aot-Xamarin.AndroidX.Fragment.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 2
	%struct.DSOCacheEntry {
		i64 16604595802139920, ; hash 0x3afdcaba6ced10, from name: libaot-Xamarin.AndroidX.CardView.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 3
	%struct.DSOCacheEntry {
		i64 24362543149721218, ; hash 0x568d9a9a43a682, from name: Xamarin.AndroidX.DynamicAnimation
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 4
	%struct.DSOCacheEntry {
		i64 29859340471032836, ; hash 0x6a14e97600dc04, from name: libaot-System.Net.WebSockets.Client.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 5
	%struct.DSOCacheEntry {
		i64 36418902923615093, ; hash 0x8162cc9bdf1b75, from name: Plugin.LocalNotification
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 6
	%struct.DSOCacheEntry {
		i64 84283058636713278, ; hash 0x12b6efeca9fed3e, from name: aot-System.Threading.Channels.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 7
	%struct.DSOCacheEntry {
		i64 85518681245955132, ; hash 0x12fd2c99953343c, from name: Microsoft.Extensions.Caching.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 8
	%struct.DSOCacheEntry {
		i64 102964479474942274, ; hash 0x16dcda607964142, from name: libaot-Xamarin.GooglePlayServices.Tasks
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 9
	%struct.DSOCacheEntry {
		i64 106028893014789901, ; hash 0x178b0b768130f0d, from name: libaot-System.ComponentModel.DataAnnotations.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 10
	%struct.DSOCacheEntry {
		i64 119522282513760569, ; hash 0x1a8a0e1f7fa0139, from name: libaot-Xamarin.GooglePlayServices.Base
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 11
	%struct.DSOCacheEntry {
		i64 120698629574877762, ; hash 0x1accec39cafe242, from name: Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 12
	%struct.DSOCacheEntry {
		i64 123340943944852543, ; hash 0x1b631ef5e18243f, from name: aot-Xamarin.AndroidX.Emoji2.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 13
	%struct.DSOCacheEntry {
		i64 127396146877449571, ; hash 0x1c49a1ee0624563, from name: libaot-System.Runtime.Handles
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 14
	%struct.DSOCacheEntry {
		i64 130339972656542395, ; hash 0x1cf0f83ba3a32bb, from name: libaot-WindowsBase.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 15
	%struct.DSOCacheEntry {
		i64 130550379555063986, ; hash 0x1cfcee0e6ac08b2, from name: Microsoft.Extensions.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 16
	%struct.DSOCacheEntry {
		i64 147907448127148234, ; hash 0x20d790a5940d0ca, from name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 17
	%struct.DSOCacheEntry {
		i64 171219061430268105, ; hash 0x2604ad44753b0c9, from name: aot-System.Security
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 18
	%struct.DSOCacheEntry {
		i64 178964122295045403, ; hash 0x27bceebc8ef8d1b, from name: aot-System.ServiceProcess.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 19
	%struct.DSOCacheEntry {
		i64 190679939293113855, ; hash 0x2a56e64ff5bedff, from name: aot-AppNetMaui
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 20
	%struct.DSOCacheEntry {
		i64 195258733703605363, ; hash 0x2b5b2c8a5b22c73, from name: System.Net.Http.Formatting
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 21
	%struct.DSOCacheEntry {
		i64 221057335580609593, ; hash 0x3115a79ba46cc39, from name: libaot-System.Threading.Thread.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 22
	%struct.DSOCacheEntry {
		i64 221913484098395070, ; hash 0x3146523568ddbbe, from name: libaot-Microsoft.Maui.Graphics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 23
	%struct.DSOCacheEntry {
		i64 228930976305280909, ; hash 0x32d538290c2778d, from name: libaot-Microsoft.Extensions.Configuration.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 24
	%struct.DSOCacheEntry {
		i64 230901793898057014, ; hash 0x33453f54b4b4d36, from name: libaot-System.IO
		i8 1, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 25
	%struct.DSOCacheEntry {
		i64 255257345538630402, ; hash 0x38adb340f23a302, from name: aot-System.Globalization.Extensions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 26
	%struct.DSOCacheEntry {
		i64 257018721508117035, ; hash 0x3911d2a5c1dca2b, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 27
	%struct.DSOCacheEntry {
		i64 274660847975729299, ; hash 0x3cfca96054d0893, from name: System.Net.Http.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 28
	%struct.DSOCacheEntry {
		i64 288365751017506018, ; hash 0x4007b1f6ac984e2, from name: libaot-System.IO.FileSystem.DriveInfo
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 29
	%struct.DSOCacheEntry {
		i64 290628453294630638, ; hash 0x4088509d83f66ee, from name: libaot-System.Net.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 30
	%struct.DSOCacheEntry {
		i64 294786924891261343, ; hash 0x4174b257692c99f, from name: aot-Xamarin.AndroidX.Navigation.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 31
	%struct.DSOCacheEntry {
		i64 295915112840604065, ; hash 0x41b4d3a3088a9a1, from name: Xamarin.AndroidX.SlidingPaneLayout
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 32
	%struct.DSOCacheEntry {
		i64 310829165835334582, ; hash 0x450497abf7233b6, from name: libaot-Xamarin.Google.Android.Material.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 33
	%struct.DSOCacheEntry {
		i64 318998200374973725, ; hash 0x46d4f2c5156d51d, from name: libaot-Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 34
	%struct.DSOCacheEntry {
		i64 326997716285276385, ; hash 0x489bab0c18c40e1, from name: Xamarin.AndroidX.DynamicAnimation.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 35
	%struct.DSOCacheEntry {
		i64 327393534088447553, ; hash 0x48b22af451a0641, from name: libaot-System.Console.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 36
	%struct.DSOCacheEntry {
		i64 338732866619584657, ; hash 0x4b36bbf5c9c3091, from name: libaot-System.Net.WebClient
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 37
	%struct.DSOCacheEntry {
		i64 345052887075248223, ; hash 0x4c9dfc5cad7d85f, from name: aot-Microsoft.VisualBasic.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 38
	%struct.DSOCacheEntry {
		i64 350308643053814566, ; hash 0x4dc8bdad6f8c326, from name: aot-Xamarin.AndroidX.DynamicAnimation.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 39
	%struct.DSOCacheEntry {
		i64 350603899592268307, ; hash 0x4dd98639c105a13, from name: aot-Xamarin.AndroidX.AsyncLayoutInflater
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 40
	%struct.DSOCacheEntry {
		i64 354365759131126047, ; hash 0x4eaf5c7c992891f, from name: Xamarin.AndroidX.ConstraintLayout.Core.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 41
	%struct.DSOCacheEntry {
		i64 365796920028716804, ; hash 0x513925c563e5f04, from name: aot-System.Runtime.Serialization.Json.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 42
	%struct.DSOCacheEntry {
		i64 370449587969267027, ; hash 0x52419f002191553, from name: aot-System.Linq.Parallel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 43
	%struct.DSOCacheEntry {
		i64 379089755283511301, ; hash 0x542cc1fb9a9d805, from name: aot-Xamarin.AndroidX.Legacy.Support.Core.UI
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 44
	%struct.DSOCacheEntry {
		i64 390170653843578339, ; hash 0x56a2a247820dde3, from name: aot-System.Security.Cryptography.Algorithms
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 45
	%struct.DSOCacheEntry {
		i64 409388313388362627, ; hash 0x5ae708082b5ab83, from name: System.Web.HttpUtility.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 46
	%struct.DSOCacheEntry {
		i64 411087723600418609, ; hash 0x5b47a1b48ba1731, from name: System.Net.Http.Formatting.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 47
	%struct.DSOCacheEntry {
		i64 411675884429428512, ; hash 0x5b691092602c720, from name: libaot-Microsoft.Maui
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 48
	%struct.DSOCacheEntry {
		i64 422779754995088667, ; hash 0x5de03f27ab57d1b, from name: System.IO.UnmanagedMemoryStream
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 49
	%struct.DSOCacheEntry {
		i64 424875103319556150, ; hash 0x5e575a7c7450036, from name: libaot-Xamarin.AndroidX.Annotation.Experimental
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 50
	%struct.DSOCacheEntry {
		i64 435170709725415398, ; hash 0x60a097471d687e6, from name: Xamarin.GooglePlayServices.Location
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 51
	%struct.DSOCacheEntry {
		i64 436230335270239240, ; hash 0x60dcd2dbe083c08, from name: aot-Xamarin.Android.Glide.Annotations.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 52
	%struct.DSOCacheEntry {
		i64 450226825260451621, ; hash 0x63f86e984004725, from name: libaot-Xamarin.Google.Crypto.Tink.Android
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 53
	%struct.DSOCacheEntry {
		i64 453537572241606500, ; hash 0x64b4a04ddc10764, from name: libaot-System.Security.Principal.Windows
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 54
	%struct.DSOCacheEntry {
		i64 455421633420727173, ; hash 0x651fb900b121385, from name: libaot-System.Threading.Tasks.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 55
	%struct.DSOCacheEntry {
		i64 472512565983034901, ; hash 0x68eb3acdf53be15, from name: libaot-System.ComponentModel.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 56
	%struct.DSOCacheEntry {
		i64 483259409837255036, ; hash 0x6b4e1df71b6e97c, from name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 57
	%struct.DSOCacheEntry {
		i64 524926330715800321, ; hash 0x748e9b773908301, from name: libaot-System.Reflection.Metadata.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 58
	%struct.DSOCacheEntry {
		i64 526193917209771750, ; hash 0x74d6a946e427ee6, from name: System.Runtime.Serialization.Json.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 59
	%struct.DSOCacheEntry {
		i64 533583443131944934, ; hash 0x767ab5081e8cfe6, from name: aot-Xamarin.AndroidX.Transition.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 60
	%struct.DSOCacheEntry {
		i64 534451948636637073, ; hash 0x76ac13734008791, from name: aot-System.Reflection.Extensions
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 61
	%struct.DSOCacheEntry {
		i64 542231388356652987, ; hash 0x78664932910afbb, from name: System.Transactions.Local.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 62
	%struct.DSOCacheEntry {
		i64 544465019603341966, ; hash 0x78e540cf615528e, from name: libaot-System.Text.Encoding.Extensions
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 63
	%struct.DSOCacheEntry {
		i64 544667435434772016, ; hash 0x78f0c2591d00630, from name: libaot-mscorlib.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 64
	%struct.DSOCacheEntry {
		i64 550580843316296054, ; hash 0x7a40e5c2200b976, from name: aot-System.Configuration
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 65
	%struct.DSOCacheEntry {
		i64 551596898779558263, ; hash 0x7a7aa74faf67177, from name: System.Security.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 66
	%struct.DSOCacheEntry {
		i64 555763084461751725, ; hash 0x7b67794ac9e3dad, from name: System.Web.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 67
	%struct.DSOCacheEntry {
		i64 560278790331054453, ; hash 0x7c6829760de3975, from name: System.Reflection.Primitives
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 68
	%struct.DSOCacheEntry {
		i64 584895086741024446, ; hash 0x81df6fb8411eebe, from name: aot-Microsoft.CSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 69
	%struct.DSOCacheEntry {
		i64 587225303260200101, ; hash 0x8263e4d53f1fca5, from name: libaot-System.Threading.Tasks.Parallel
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 70
	%struct.DSOCacheEntry {
		i64 603416640204715261, ; hash 0x85fc43cbaf634fd, from name: libaot-System.Net.NameResolution
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 71
	%struct.DSOCacheEntry {
		i64 610604708021292115, ; hash 0x8794dbf2fca4c53, from name: aot-System.Net.Http.Formatting.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 72
	%struct.DSOCacheEntry {
		i64 626497116700919570, ; hash 0x8b1c3ceedc3c712, from name: aot-System.Text.RegularExpressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 73
	%struct.DSOCacheEntry {
		i64 628522906763308403, ; hash 0x8b8f640eed2ad73, from name: libaot-System.ObjectModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 74
	%struct.DSOCacheEntry {
		i64 634534809485270712, ; hash 0x8ce520c1cfd5eb8, from name: aot-Xamarin.AndroidX.Arch.Core.Runtime
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 75
	%struct.DSOCacheEntry {
		i64 636333942931124576, ; hash 0x8d4b65982eef160, from name: libaot-System.Net.WebSockets.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 76
	%struct.DSOCacheEntry {
		i64 636707968497726859, ; hash 0x8d60a861ff7b58b, from name: libaot-Xamarin.AndroidX.Fragment.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 77
	%struct.DSOCacheEntry {
		i64 643375859359477927, ; hash 0x8edbaef722ef0a7, from name: aot-System.Data.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 78
	%struct.DSOCacheEntry {
		i64 649145001856603771, ; hash 0x90239f09b62167b, from name: System.Security.SecureString
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 79
	%struct.DSOCacheEntry {
		i64 658334938653860260, ; hash 0x922e02381b121a4, from name: System.ComponentModel.EventBasedAsync.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 80
	%struct.DSOCacheEntry {
		i64 680930311029487832, ; hash 0x973268299b578d8, from name: aot-System.IO.Compression.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 81
	%struct.DSOCacheEntry {
		i64 687654259221141486, ; hash 0x98b09e7c92917ee, from name: Xamarin.GooglePlayServices.Base
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 82
	%struct.DSOCacheEntry {
		i64 716574749169539573, ; hash 0x9f1c8f01343d9f5, from name: mono-component-debugger
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 83
	%struct.DSOCacheEntry {
		i64 720058930071658100, ; hash 0x9fe29c82844de74, from name: Xamarin.AndroidX.Legacy.Support.Core.UI
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 84
	%struct.DSOCacheEntry {
		i64 728665063517349799, ; hash 0xa1cbd03bf3067a7, from name: System.Runtime.CompilerServices.VisualC.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 85
	%struct.DSOCacheEntry {
		i64 739739707383691399, ; hash 0xa44155834db3887, from name: aot-Xamarin.AndroidX.CursorAdapter.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 86
	%struct.DSOCacheEntry {
		i64 741027209231504624, ; hash 0xa48a852172494f0, from name: aot-System.Private.DataContractSerialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 87
	%struct.DSOCacheEntry {
		i64 743359736279824557, ; hash 0xa50f1bddd4978ad, from name: libaot-Xamarin.AndroidX.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 88
	%struct.DSOCacheEntry {
		i64 750875890346172408, ; hash 0xa6ba5a4da7d1ff8, from name: System.Threading.Thread
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 89
	%struct.DSOCacheEntry {
		i64 756290313852954525, ; hash 0xa7ee2089046279d, from name: System.Security.Cryptography.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 90
	%struct.DSOCacheEntry {
		i64 771524290733889039, ; hash 0xab5014134c7560f, from name: libaot-System.Core.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 91
	%struct.DSOCacheEntry {
		i64 782606669991132725, ; hash 0xadc609eb3ac3e35, from name: aot-System.Diagnostics.FileVersionInfo
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 92
	%struct.DSOCacheEntry {
		i64 792582575053988794, ; hash 0xaffd1a71941e3ba, from name: libaot-System.Diagnostics.Contracts
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 93
	%struct.DSOCacheEntry {
		i64 799181003517975415, ; hash 0xb1742e371eddb77, from name: libaot-System.ComponentModel.Annotations.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 94
	%struct.DSOCacheEntry {
		i64 858870550354436696, ; hash 0xbeb52370deba258, from name: Xamarin.AndroidX.Print.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 95
	%struct.DSOCacheEntry {
		i64 872800313462103108, ; hash 0xc1ccf42c3c21c44, from name: Xamarin.AndroidX.DrawerLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 96
	%struct.DSOCacheEntry {
		i64 916945015038476777, ; hash 0xcb9a4a20bef01e9, from name: aot-Xamarin.Android.Glide.GifDecoder
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 97
	%struct.DSOCacheEntry {
		i64 917175643050152429, ; hash 0xcba766350a511ed, from name: aot-System.Runtime.Extensions
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 98
	%struct.DSOCacheEntry {
		i64 926729488379472330, ; hash 0xcdc678f45bce9ca, from name: aot-Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 99
	%struct.DSOCacheEntry {
		i64 926762996762141689, ; hash 0xcdc86090cfbe3f9, from name: libaot-Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.90, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 100
	%struct.DSOCacheEntry {
		i64 938396845403056490, ; hash 0xd05daf58498a96a, from name: aot-Xamarin.AndroidX.Annotation.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.91, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 101
	%struct.DSOCacheEntry {
		i64 938607774865935643, ; hash 0xd069acc5c4dcd1b, from name: libaot-System.Linq.Parallel
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 102
	%struct.DSOCacheEntry {
		i64 939629566326747810, ; hash 0xd0a3c1cb95c32a2, from name: libaot-System.Reflection.Emit.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.92, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 103
	%struct.DSOCacheEntry {
		i64 940822596282819491, ; hash 0xd0e792aa81923a3, from name: System.Transactions
		i8 1, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.93, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 104
	%struct.DSOCacheEntry {
		i64 945516220115849374, ; hash 0xd1f25fe1d60109e, from name: aot-System.IO.UnmanagedMemoryStream
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 105
	%struct.DSOCacheEntry {
		i64 970662533192355986, ; hash 0xd787c6e5fb61092, from name: System.Net.Ping.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.94, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 106
	%struct.DSOCacheEntry {
		i64 971961513790681686, ; hash 0xd7d19d8dcd83256, from name: libaot-System.Runtime.Handles.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 107
	%struct.DSOCacheEntry {
		i64 972643759226808436, ; hash 0xd7f865881b6e874, from name: aot-Xamarin.AndroidX.SlidingPaneLayout
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 108
	%struct.DSOCacheEntry {
		i64 985251676246244165, ; hash 0xdac512df103fb45, from name: libaot-Xamarin.Kotlin.StdLib.Jdk7.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.95, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 109
	%struct.DSOCacheEntry {
		i64 1006735618293444227, ; hash 0xdf8a4b5ff1d2e83, from name: aot-System.Threading.Overlapped.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.96, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 110
	%struct.DSOCacheEntry {
		i64 1021076955717943999, ; hash 0xe2b9814d1e7c2bf, from name: aot-Xamarin.Kotlin.StdLib.Jdk8
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.97, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 111
	%struct.DSOCacheEntry {
		i64 1055594944834953507, ; hash 0xea63a027195e123, from name: aot-Microsoft.Win32.Primitives
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.98, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 112
	%struct.DSOCacheEntry {
		i64 1073059568914444961, ; hash 0xee445fe1bfab2a1, from name: libaot-System.Reflection.TypeExtensions
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.99, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 113
	%struct.DSOCacheEntry {
		i64 1078106539207780469, ; hash 0xef6342f73816875, from name: aot-Xamarin.Kotlin.StdLib.Jdk7
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.95, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 114
	%struct.DSOCacheEntry {
		i64 1096321628016204463, ; hash 0xf36eab64d7bdaaf, from name: aot-System.Linq.Expressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.100, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 115
	%struct.DSOCacheEntry {
		i64 1097501675994448902, ; hash 0xf3b1bf5a20b8406, from name: libaot-System.Collections
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.101, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 116
	%struct.DSOCacheEntry {
		i64 1135679001553794407, ; hash 0xfc2be08ea7bf567, from name: aot-Microsoft.Maui.Controls.Compatibility
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.102, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 117
	%struct.DSOCacheEntry {
		i64 1136601720422326463, ; hash 0xfc6053e24dee0bf, from name: libaot-Xamarin.Kotlin.StdLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.103, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 118
	%struct.DSOCacheEntry {
		i64 1146928578970395727, ; hash 0xfeab5774446244f, from name: aot-System.ComponentModel.Primitives
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.104, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 119
	%struct.DSOCacheEntry {
		i64 1151394494093259064, ; hash 0xffa933128c4f138, from name: aot-Xamarin.AndroidX.Collection
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.105, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 120
	%struct.DSOCacheEntry {
		i64 1159483400534289526, ; hash 0x1017500273ceec76, from name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 121
	%struct.DSOCacheEntry {
		i64 1181472735908652530, ; hash 0x10656f318fa4e5f2, from name: System.Runtime.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.106, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 122
	%struct.DSOCacheEntry {
		i64 1196280833168408863, ; hash 0x109a0b14609c811f, from name: libaot-System.Diagnostics.TraceSource
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.107, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 123
	%struct.DSOCacheEntry {
		i64 1200280967012175695, ; hash 0x10a8412e1d6c4f4f, from name: libaot-netstandard.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.108, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 124
	%struct.DSOCacheEntry {
		i64 1207045513591538152, ; hash 0x10c0497fd95a41e8, from name: aot-Xamarin.AndroidX.DynamicAnimation
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 125
	%struct.DSOCacheEntry {
		i64 1207922923948824027, ; hash 0x10c3677fde0555db, from name: aot-System.Reflection.DispatchProxy
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.109, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 126
	%struct.DSOCacheEntry {
		i64 1218657088007376027, ; hash 0x10e98a2a31b10c9b, from name: aot-System.IO.MemoryMappedFiles
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.110, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 127
	%struct.DSOCacheEntry {
		i64 1234884336330527393, ; hash 0x112330c2ddacd2a1, from name: aot-System.Security.Claims.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.111, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 128
	%struct.DSOCacheEntry {
		i64 1249162902185008584, ; hash 0x1155eb0a8b555dc8, from name: aot-System.Diagnostics.Debug
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.112, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 129
	%struct.DSOCacheEntry {
		i64 1258620449927643492, ; hash 0x117784a178fac164, from name: libaot-System.IO.Compression.ZipFile
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.113, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 130
	%struct.DSOCacheEntry {
		i64 1301626418029409250, ; hash 0x12104e54b4e833e2, from name: System.Diagnostics.FileVersionInfo
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 131
	%struct.DSOCacheEntry {
		i64 1310390983169450822, ; hash 0x122f71a80cb0a346, from name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.114, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 132
	%struct.DSOCacheEntry {
		i64 1336414576634453616, ; hash 0x128be5fa10f35e70, from name: aot-System.Runtime.CompilerServices.Unsafe
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.115, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 133
	%struct.DSOCacheEntry {
		i64 1347602760944503386, ; hash 0x12b3a592386eca5a, from name: libaot-Xamarin.AndroidX.AppCompat
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.116, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 134
	%struct.DSOCacheEntry {
		i64 1363389722066996530, ; hash 0x12ebbbba8a38cd32, from name: AppNetMaui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 135
	%struct.DSOCacheEntry {
		i64 1373489503493278710, ; hash 0x130f9d6d2671cbf6, from name: libaot-Xamarin.Android.Glide.GifDecoder.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 136
	%struct.DSOCacheEntry {
		i64 1379514111066213802, ; hash 0x132504c668bd8daa, from name: aot-System.Reflection.Emit.ILGeneration.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.117, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 137
	%struct.DSOCacheEntry {
		i64 1403502749390460514, ; hash 0x137a3e5082b3d662, from name: aot-Xamarin.AndroidX.ResourceInspection.Annotation.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.118, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 138
	%struct.DSOCacheEntry {
		i64 1406898269780780829, ; hash 0x13864e85b565271d, from name: aot-Microsoft.Extensions.Caching.Memory.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.119, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 139
	%struct.DSOCacheEntry {
		i64 1410332061527240137, ; hash 0x13928189a6acedc9, from name: libaot-System.Security
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 140
	%struct.DSOCacheEntry {
		i64 1427352767488458329, ; hash 0x13cef9c79351fe59, from name: libaot-GoogleGson
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.120, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 141
	%struct.DSOCacheEntry {
		i64 1491677435315304531, ; hash 0x14b380b9636f3853, from name: libaot-System.Runtime.Serialization.Json.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 142
	%struct.DSOCacheEntry {
		i64 1492119819386566316, ; hash 0x14b51311f4db36ac, from name: libaot-System.Threading.Tasks.Dataflow
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.121, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 143
	%struct.DSOCacheEntry {
		i64 1492954217099365037, ; hash 0x14b809f350210aad, from name: System.Net.HttpListener
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.122, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 144
	%struct.DSOCacheEntry {
		i64 1499327756876432029, ; hash 0x14ceaea6ae80c29d, from name: libSystem.Security.Cryptography.Native.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.123, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 145
	%struct.DSOCacheEntry {
		i64 1509478094721566975, ; hash 0x14f2be54601cc8ff, from name: System.Threading.Tasks.Dataflow.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.121, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 146
	%struct.DSOCacheEntry {
		i64 1530161931193496526, ; hash 0x153c3a2b559d33ce, from name: aot-Xamarin.AndroidX.VectorDrawable
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.124, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 147
	%struct.DSOCacheEntry {
		i64 1536393630511050858, ; hash 0x15525ddde5c8b06a, from name: aot-System.Reflection.Extensions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 148
	%struct.DSOCacheEntry {
		i64 1560574748131067758, ; hash 0x15a8467713cc076e, from name: System.Collections.NonGeneric.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.125, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 149
	%struct.DSOCacheEntry {
		i64 1572191742284783056, ; hash 0x15d18c0f4dafddd0, from name: aot-System.Transactions
		i8 1, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.93, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 150
	%struct.DSOCacheEntry {
		i64 1590769080314986753, ; hash 0x16138c0cdfd98101, from name: aot-System.ComponentModel.DataAnnotations.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 151
	%struct.DSOCacheEntry {
		i64 1641320959751678609, ; hash 0x16c724b78066ea91, from name: Xamarin.GooglePlayServices.Tasks.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 152
	%struct.DSOCacheEntry {
		i64 1651782184287836205, ; hash 0x16ec4f2524cb982d, from name: System.Globalization.Calendars
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.126, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 153
	%struct.DSOCacheEntry {
		i64 1652167503506081722, ; hash 0x16edad9743ec87ba, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.127, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 154
	%struct.DSOCacheEntry {
		i64 1659332977923810219, ; hash 0x1707228d493d63ab, from name: System.Reflection.DispatchProxy
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.109, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 155
	%struct.DSOCacheEntry {
		i64 1690700643259123969, ; hash 0x17769346fefc0901, from name: libaot-Xamarin.AndroidX.ViewPager2
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.128, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 156
	%struct.DSOCacheEntry {
		i64 1699364539441200861, ; hash 0x17955b0b8549bedd, from name: libaot-System.Xml.XPath.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.129, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 157
	%struct.DSOCacheEntry {
		i64 1709477469831854591, ; hash 0x17b948b39cdc79ff, from name: aot-Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.130, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 158
	%struct.DSOCacheEntry {
		i64 1730900776029750156, ; hash 0x18056515c8b3838c, from name: aot-System.Runtime.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.106, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 159
	%struct.DSOCacheEntry {
		i64 1731380447121279447, ; hash 0x18071957e9b889d7, from name: Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 160
	%struct.DSOCacheEntry {
		i64 1756598369329214952, ; hash 0x1860b0e8f8e5f5e8, from name: libaot-Xamarin.GooglePlayServices.Tasks.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 161
	%struct.DSOCacheEntry {
		i64 1796136999335874826, ; hash 0x18ed2915a559d10a, from name: Microsoft.EntityFrameworkCore.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.131, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 162
	%struct.DSOCacheEntry {
		i64 1836611346387731153, ; hash 0x197cf449ebe482d1, from name: Xamarin.AndroidX.SavedState
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.132, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 163
	%struct.DSOCacheEntry {
		i64 1854145951182283680, ; hash 0x19bb3feb3df2e3a0, from name: System.Runtime.CompilerServices.VisualC
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 164
	%struct.DSOCacheEntry {
		i64 1863551730785265867, ; hash 0x19dcaa6cf60528cb, from name: libaot-System.ServiceModel.Web
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.133, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 165
	%struct.DSOCacheEntry {
		i64 1875417405349196092, ; hash 0x1a06d2319b6c713c, from name: System.Drawing.Primitives
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.134, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 166
	%struct.DSOCacheEntry {
		i64 1888175769036431548, ; hash 0x1a3425dba2eaa0bc, from name: System.Reflection.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.135, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 167
	%struct.DSOCacheEntry {
		i64 1888606982268837143, ; hash 0x1a35ae0b4a74dd17, from name: libaot-Newtonsoft.Json.Bson.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.136, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 168
	%struct.DSOCacheEntry {
		i64 1893652335120276468, ; hash 0x1a479ac40aeedbf4, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.137, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 169
	%struct.DSOCacheEntry {
		i64 1894716699642122920, ; hash 0x1a4b62ccb82b52a8, from name: libaot-Xamarin.Jetbrains.Annotations
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.138, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 170
	%struct.DSOCacheEntry {
		i64 1897575647115118287, ; hash 0x1a558aff4cba86cf, from name: Xamarin.AndroidX.Security.SecurityCrypto
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.139, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 171
	%struct.DSOCacheEntry {
		i64 1913673474355003746, ; hash 0x1a8ebbe2c7048162, from name: libaot-System.Net.WebProxy
		i8 1, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.140, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 172
	%struct.DSOCacheEntry {
		i64 1920760634179481754, ; hash 0x1aa7e99ec2d2709a, from name: Microsoft.Maui.Controls.Xaml
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.141, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 173
	%struct.DSOCacheEntry {
		i64 1923829157326072250, ; hash 0x1ab2d06cfaf5a9ba, from name: System.ValueTuple.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.142, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 174
	%struct.DSOCacheEntry {
		i64 1927375985711994866, ; hash 0x1abf6a3f50fb57f2, from name: aot-Plugin.LocalNotification
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 175
	%struct.DSOCacheEntry {
		i64 1944135226823170461, ; hash 0x1afaf4b0361e599d, from name: aot-Microsoft.Extensions.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 176
	%struct.DSOCacheEntry {
		i64 1953421603491699382, ; hash 0x1b1bf29944b25ab6, from name: libaot-System.Net.Quic.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.143, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 177
	%struct.DSOCacheEntry {
		i64 1972385128188460614, ; hash 0x1b5f51d2edefbe46, from name: System.Security.Cryptography.Algorithms
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 178
	%struct.DSOCacheEntry {
		i64 1987651377475599545, ; hash 0x1b958e6593bfbcb9, from name: aot-Xamarin.AndroidX.AsyncLayoutInflater.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 179
	%struct.DSOCacheEntry {
		i64 1998496697131023285, ; hash 0x1bbc162855493bb5, from name: aot-System.Runtime.CompilerServices.Unsafe.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.115, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 180
	%struct.DSOCacheEntry {
		i64 2010011812825262371, ; hash 0x1be4ff1821c9e923, from name: System.ComponentModel.TypeConverter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.144, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 181
	%struct.DSOCacheEntry {
		i64 2019051625445060944, ; hash 0x1c051cc185d3f150, from name: libaot-System.Data.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.145, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 182
	%struct.DSOCacheEntry {
		i64 2024202821639637893, ; hash 0x1c1769bdd92c8b85, from name: aot-System.IO.Compression
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 183
	%struct.DSOCacheEntry {
		i64 2024898348773596241, ; hash 0x1c19e251e0ecdc51, from name: libaot-System.IO.Pipes.AccessControl.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.146, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 184
	%struct.DSOCacheEntry {
		i64 2034246700143554471, ; hash 0x1c3b18988b912fa7, from name: libaot-Xamarin.AndroidX.Navigation.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.147, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 185
	%struct.DSOCacheEntry {
		i64 2042015314193080497, ; hash 0x1c56b21bf462e0b1, from name: aot-System.Reflection.Emit
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.92, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 186
	%struct.DSOCacheEntry {
		i64 2049680831748653902, ; hash 0x1c71eddb574e434e, from name: libaot-Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.148, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 187
	%struct.DSOCacheEntry {
		i64 2054529855940994150, ; hash 0x1c832804c3cc2466, from name: aot-Xamarin.AndroidX.AppCompat
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.116, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 188
	%struct.DSOCacheEntry {
		i64 2056946083084152442, ; hash 0x1c8bbd907c5cae7a, from name: aot-Xamarin.Google.Guava.ListenableFuture.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.149, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 189
	%struct.DSOCacheEntry {
		i64 2059885036233362492, ; hash 0x1c962e86d6d50c3c, from name: libaot-Xamarin.AndroidX.Legacy.Support.Core.UI
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 190
	%struct.DSOCacheEntry {
		i64 2062890601515140263, ; hash 0x1ca0dc1289cd44a7, from name: System.Threading.Tasks.Dataflow
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.121, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 191
	%struct.DSOCacheEntry {
		i64 2063968891640723124, ; hash 0x1ca4b0c585b3b6b4, from name: System.Xml.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.150, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 192
	%struct.DSOCacheEntry {
		i64 2080673196037342763, ; hash 0x1ce0093f777b862b, from name: aot-System.Diagnostics.Contracts.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 193
	%struct.DSOCacheEntry {
		i64 2080945842184875448, ; hash 0x1ce10137d8416db8, from name: System.IO.MemoryMappedFiles
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.110, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 194
	%struct.DSOCacheEntry {
		i64 2081794811402477991, ; hash 0x1ce40559e4e561a7, from name: Microsoft.Extensions.Options.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.151, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 195
	%struct.DSOCacheEntry {
		i64 2094804360116222711, ; hash 0x1d123d777eaabaf7, from name: libaot-Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.152, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 196
	%struct.DSOCacheEntry {
		i64 2137507378611301939, ; hash 0x1da9f3a2c6e72e33, from name: aot-System.IO.Pipes.AccessControl.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.146, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 197
	%struct.DSOCacheEntry {
		i64 2144684468955424113, ; hash 0x1dc373295762a571, from name: aot-System.Reflection
		i8 1, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.135, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 198
	%struct.DSOCacheEntry {
		i64 2154631985584437668, ; hash 0x1de6ca600a7479a4, from name: libaot-System.Resources.ResourceManager
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.153, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 199
	%struct.DSOCacheEntry {
		i64 2165310824878145998, ; hash 0x1e0cbab9112b81ce, from name: Xamarin.Android.Glide.GifDecoder
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 200
	%struct.DSOCacheEntry {
		i64 2165725771938924357, ; hash 0x1e0e341d75540745, from name: Xamarin.AndroidX.Browser
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.154, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 201
	%struct.DSOCacheEntry {
		i64 2169143264332568652, ; hash 0x1e1a584e6979584c, from name: aot-System.Collections.Concurrent.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.155, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 202
	%struct.DSOCacheEntry {
		i64 2172301649342954866, ; hash 0x1e2590d73a14fd72, from name: libaot-System.Windows.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.156, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 203
	%struct.DSOCacheEntry {
		i64 2178726392135891111, ; hash 0x1e3c641c3a0738a7, from name: System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.157, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 204
	%struct.DSOCacheEntry {
		i64 2188053935818705699, ; hash 0x1e5d877639de8b23, from name: aot-Xamarin.AndroidX.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 205
	%struct.DSOCacheEntry {
		i64 2197641646939815740, ; hash 0x1e7f976f2d73bf3c, from name: aot-Microsoft.EntityFrameworkCore.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.158, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 206
	%struct.DSOCacheEntry {
		i64 2203837998074764700, ; hash 0x1e959afb99c11d9c, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 207
	%struct.DSOCacheEntry {
		i64 2205845752800215288, ; hash 0x1e9cbd066cf600f8, from name: aot-System.IO.FileSystem.Watcher.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.159, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 208
	%struct.DSOCacheEntry {
		i64 2213385277651629120, ; hash 0x1eb7862ed9813440, from name: aot-System.Transactions.Local.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 209
	%struct.DSOCacheEntry {
		i64 2217270221427496189, ; hash 0x1ec55384cf3cd4fd, from name: Xamarin.AndroidX.Arch.Core.Runtime.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 210
	%struct.DSOCacheEntry {
		i64 2220005773605754997, ; hash 0x1ecf0b7d2f165875, from name: libaot-Xamarin.AndroidX.Legacy.Support.Core.UI.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 211
	%struct.DSOCacheEntry {
		i64 2224048179339183696, ; hash 0x1edd68091cddc650, from name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.160, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 212
	%struct.DSOCacheEntry {
		i64 2241162083223965778, ; hash 0x1f1a350a5ea39052, from name: aot-Xamarin.GooglePlayServices.Location
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 213
	%struct.DSOCacheEntry {
		i64 2246096926805359669, ; hash 0x1f2bbd412d547c35, from name: libaot-Xamarin.AndroidX.Arch.Core.Runtime
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 214
	%struct.DSOCacheEntry {
		i64 2252400175866078065, ; hash 0x1f422206b6866371, from name: libaot-AppNetMaui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 215
	%struct.DSOCacheEntry {
		i64 2275843994709028117, ; hash 0x1f956c0e24d66d15, from name: libaot-System.Net.Http.Formatting.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 216
	%struct.DSOCacheEntry {
		i64 2278942814095671648, ; hash 0x1fa06e6a419a0160, from name: System.ObjectModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 217
	%struct.DSOCacheEntry {
		i64 2285715472525506263, ; hash 0x1fb87e1cad7f36d7, from name: aot-Xamarin.AndroidX.Legacy.Support.Core.UI.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 218
	%struct.DSOCacheEntry {
		i64 2287834202362508563, ; hash 0x1fc00515e8ce7513, from name: System.Collections.Concurrent
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.155, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 219
	%struct.DSOCacheEntry {
		i64 2308032427487440447, ; hash 0x2007c743aa78ae3f, from name: libaot-System.Linq.Expressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.100, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 220
	%struct.DSOCacheEntry {
		i64 2316119226167002719, ; hash 0x2024822a3523065f, from name: libaot-System.Net.WebClient.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 221
	%struct.DSOCacheEntry {
		i64 2317435067800416661, ; hash 0x20292eea7646f195, from name: System.AppContext.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.161, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 222
	%struct.DSOCacheEntry {
		i64 2331926070505433189, ; hash 0x205caa67f2f2e865, from name: aot-Xamarin.Kotlin.StdLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.103, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 223
	%struct.DSOCacheEntry {
		i64 2335503487726329082, ; hash 0x2069600c4d9d1cfa, from name: System.Text.Encodings.Web
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.162, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 224
	%struct.DSOCacheEntry {
		i64 2337758774805907496, ; hash 0x207163383edbc828, from name: System.Runtime.CompilerServices.Unsafe
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.115, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 225
	%struct.DSOCacheEntry {
		i64 2341103241755635659, ; hash 0x207d44fea35c2fcb, from name: Xamarin.Google.Crypto.Tink.Android.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 226
	%struct.DSOCacheEntry {
		i64 2355010170746472921, ; hash 0x20aead45ddc689d9, from name: System.Globalization.Calendars.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.126, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 227
	%struct.DSOCacheEntry {
		i64 2383056933276923752, ; hash 0x211251a7a380b768, from name: System.Memory.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.163, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 228
	%struct.DSOCacheEntry {
		i64 2403894093814325575, ; hash 0x215c58f123766147, from name: System.Security.Principal.Windows.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 229
	%struct.DSOCacheEntry {
		i64 2428209039270142025, ; hash 0x21b2bb418a16e049, from name: libaot-System.Threading.Tasks.Dataflow.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.121, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 230
	%struct.DSOCacheEntry {
		i64 2461323963611156054, ; hash 0x2228611ab0330e56, from name: aot-System.Threading.Tasks.Dataflow
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.121, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 231
	%struct.DSOCacheEntry {
		i64 2470498323731680442, ; hash 0x2248f922dc398cba, from name: Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.164, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 232
	%struct.DSOCacheEntry {
		i64 2476879673203463353, ; hash 0x225fa4f090ad94b9, from name: libaot-System.Runtime.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.165, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 233
	%struct.DSOCacheEntry {
		i64 2497223385847772520, ; hash 0x22a7eb7046413568, from name: System.Runtime
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.165, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 234
	%struct.DSOCacheEntry {
		i64 2511572262874387261, ; hash 0x22dae5aa8c5a133d, from name: System.Runtime.InteropServices.JavaScript.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.166, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 235
	%struct.DSOCacheEntry {
		i64 2522582145975789087, ; hash 0x23020318b7a1261f, from name: Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.116, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 236
	%struct.DSOCacheEntry {
		i64 2538554391237297494, ; hash 0x233ac1c4dcb50556, from name: SkiaSharp.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.167, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 237
	%struct.DSOCacheEntry {
		i64 2543609594401387459, ; hash 0x234cb7731191f3c3, from name: aot-System.Threading.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.168, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 238
	%struct.DSOCacheEntry {
		i64 2552433275064631459, ; hash 0x236c108a511d40a3, from name: System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.169, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 239
	%struct.DSOCacheEntry {
		i64 2564867392456424521, ; hash 0x23983d4ddf58fc49, from name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.170, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 240
	%struct.DSOCacheEntry {
		i64 2589712498362123328, ; hash 0x23f081cbdf438440, from name: aot-Xamarin.AndroidX.Arch.Core.Common
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.171, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 241
	%struct.DSOCacheEntry {
		i64 2607857763146079109, ; hash 0x2430f8d18d111b85, from name: libaot-System.Runtime.Serialization.Primitives.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.172, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 242
	%struct.DSOCacheEntry {
		i64 2621972009330107316, ; hash 0x24631da6932363b4, from name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.169, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 243
	%struct.DSOCacheEntry {
		i64 2632269733008246987, ; hash 0x2487b36034f808cb, from name: System.Net.NameResolution
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 244
	%struct.DSOCacheEntry {
		i64 2656596682083634687, ; hash 0x24de209b6b138dff, from name: Microsoft.EntityFrameworkCore.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.158, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 245
	%struct.DSOCacheEntry {
		i64 2656907746661064104, ; hash 0x24df3b84c8b75da8, from name: Microsoft.Extensions.DependencyInjection
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.160, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 246
	%struct.DSOCacheEntry {
		i64 2668219604630665034, ; hash 0x25076b97f4be774a, from name: aot-Xamarin.AndroidX.Navigation.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.173, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 247
	%struct.DSOCacheEntry {
		i64 2668542158792596923, ; hash 0x250890f472fc9dbb, from name: aot-System.IO.MemoryMappedFiles.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.110, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 248
	%struct.DSOCacheEntry {
		i64 2676598929141056664, ; hash 0x2525308b79a4c498, from name: xamarin-debug-app-helper.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.174, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 249
	%struct.DSOCacheEntry {
		i64 2680228656536905837, ; hash 0x253215c33db4686d, from name: libaot-System.Numerics.Vectors
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.175, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 250
	%struct.DSOCacheEntry {
		i64 2696149129426007350, ; hash 0x256aa55930ea7536, from name: libaot-System.Net.NetworkInformation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.176, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 251
	%struct.DSOCacheEntry {
		i64 2701058605776676762, ; hash 0x257c167dbad4a79a, from name: System.IO.Compression.FileSystem.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.177, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 252
	%struct.DSOCacheEntry {
		i64 2706075432581334785, ; hash 0x258de944be6c0701, from name: System.Net.WebSockets
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 253
	%struct.DSOCacheEntry {
		i64 2715756168958947337, ; hash 0x25b04dd8d35fb009, from name: libaot-Microsoft.EntityFrameworkCore.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.158, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 254
	%struct.DSOCacheEntry {
		i64 2720835231062098223, ; hash 0x25c2593a1fd3012f, from name: libaot-System.Security.Cryptography.Primitives.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.178, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 255
	%struct.DSOCacheEntry {
		i64 2731559543132830859, ; hash 0x25e872ee9b42bc8b, from name: aot-System.Threading.Overlapped
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.96, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 256
	%struct.DSOCacheEntry {
		i64 2739332427923382687, ; hash 0x260410546014e19f, from name: libaot-System.IO.UnmanagedMemoryStream.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 257
	%struct.DSOCacheEntry {
		i64 2742955797410753054, ; hash 0x2610efc3d3442a1e, from name: libaot-System.IO.MemoryMappedFiles.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.110, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 258
	%struct.DSOCacheEntry {
		i64 2768148223752389014, ; hash 0x266a7024aa63c196, from name: aot-System.Security.Principal.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.179, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 259
	%struct.DSOCacheEntry {
		i64 2770569676694168271, ; hash 0x26730a711cd322cf, from name: Xamarin.Jetbrains.Annotations.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.138, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 260
	%struct.DSOCacheEntry {
		i64 2770866442878152074, ; hash 0x267418595fcd6d8a, from name: libaot-System.Resources.Writer
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.180, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 261
	%struct.DSOCacheEntry {
		i64 2787234703088983483, ; hash 0x26ae3f31ef429dbb, from name: Xamarin.AndroidX.Startup.StartupRuntime
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.181, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 262
	%struct.DSOCacheEntry {
		i64 2794313539767296687, ; hash 0x26c7655c08e4e2af, from name: aot-Camera.MAUI.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.182, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 263
	%struct.DSOCacheEntry {
		i64 2794448935210026949, ; hash 0x26c7e0803e2987c5, from name: aot-System.Net.ServicePoint
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.183, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 264
	%struct.DSOCacheEntry {
		i64 2815524396660695947, ; hash 0x2712c0857f68238b, from name: System.Security.AccessControl
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.184, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 265
	%struct.DSOCacheEntry {
		i64 2834374838958460508, ; hash 0x2755b8e61c6c8e5c, from name: Microsoft.Maui.Graphics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 266
	%struct.DSOCacheEntry {
		i64 2864889642192985433, ; hash 0x27c221f3639bdd59, from name: aot-Microsoft.Maui
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 267
	%struct.DSOCacheEntry {
		i64 2865936624365190494, ; hash 0x27c5da2cec11bd5e, from name: aot-System.ComponentModel.TypeConverter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.144, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 268
	%struct.DSOCacheEntry {
		i64 2895224535127013735, ; hash 0x282de760093db967, from name: libaot-System.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.185, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 269
	%struct.DSOCacheEntry {
		i64 2978076563348721961, ; hash 0x295440db18511129, from name: libaot-System.Collections.Specialized
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.186, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 270
	%struct.DSOCacheEntry {
		i64 3014810749284030793, ; hash 0x29d6c267401a9949, from name: System.IO.FileSystem.DriveInfo.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 271
	%struct.DSOCacheEntry {
		i64 3017136373564924869, ; hash 0x29df058bd93f63c5, from name: System.Net.WebProxy
		i8 1, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.140, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 272
	%struct.DSOCacheEntry {
		i64 3017704767998173186, ; hash 0x29e10a7f7d88a002, from name: Xamarin.Google.Android.Material
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 273
	%struct.DSOCacheEntry {
		i64 3021830647363748080, ; hash 0x29efb2f6a38140f0, from name: libaot-System.Security.Principal.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.179, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 274
	%struct.DSOCacheEntry {
		i64 3023023456770706911, ; hash 0x29f3efd1387dcddf, from name: System.Runtime.Serialization.Formatters.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.187, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 275
	%struct.DSOCacheEntry {
		i64 3038175307180388234, ; hash 0x2a29c4584dd9af8a, from name: aot-Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.164, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 276
	%struct.DSOCacheEntry {
		i64 3064219428148914307, ; hash 0x2a864b55c0aaa883, from name: aot-System.Net.WebClient
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 277
	%struct.DSOCacheEntry {
		i64 3073412500499229570, ; hash 0x2aa6f462b4806b82, from name: System.Threading.Channels.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 278
	%struct.DSOCacheEntry {
		i64 3077311767976570318, ; hash 0x2ab4cebfa95f6dce, from name: aot-System.Security.Cryptography.Encoding.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.188, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 279
	%struct.DSOCacheEntry {
		i64 3082827728618939793, ; hash 0x2ac8677c540e6591, from name: Xamarin.AndroidX.Lifecycle.Process.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.189, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 280
	%struct.DSOCacheEntry {
		i64 3106852385031680087, ; hash 0x2b1dc1c88b637057, from name: System.Runtime.Serialization.Xml
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.190, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 281
	%struct.DSOCacheEntry {
		i64 3108167353802057239, ; hash 0x2b226dbd91d66617, from name: libaot-Xamarin.AndroidX.SavedState
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.132, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 282
	%struct.DSOCacheEntry {
		i64 3116659788444322944, ; hash 0x2b40999097f7cc80, from name: aot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.130, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 283
	%struct.DSOCacheEntry {
		i64 3127604348072465164, ; hash 0x2b677b9574d3930c, from name: aot-SkiaSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.191, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 284
	%struct.DSOCacheEntry {
		i64 3135045361691397059, ; hash 0x2b81eb25725a0bc3, from name: libaot-Xamarin.AndroidX.SlidingPaneLayout
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 285
	%struct.DSOCacheEntry {
		i64 3142558996668056863, ; hash 0x2b9c9cc1ea1b851f, from name: libaot-Microsoft.Maui.Controls.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.192, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 286
	%struct.DSOCacheEntry {
		i64 3159715243761782120, ; hash 0x2bd99045f7cecd68, from name: aot-System.Linq.Expressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.100, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 287
	%struct.DSOCacheEntry {
		i64 3175160170369933956, ; hash 0x2c106f5a2bde6284, from name: libaot-System.IO.FileSystem.DriveInfo.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 288
	%struct.DSOCacheEntry {
		i64 3188209531010000695, ; hash 0x2c3ecbad355da737, from name: System.Text.Encodings.Web.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.162, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 289
	%struct.DSOCacheEntry {
		i64 3207499409309355895, ; hash 0x2c8353b7fd28cf77, from name: libaot-Xamarin.AndroidX.Core.Core.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.193, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 290
	%struct.DSOCacheEntry {
		i64 3215847190090144585, ; hash 0x2ca0fbfb2942db49, from name: libaot-System.Security.Cryptography.Algorithms.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 291
	%struct.DSOCacheEntry {
		i64 3228004203549710724, ; hash 0x2ccc2cb86e0c5984, from name: aot-System.Xml.Linq
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.194, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 292
	%struct.DSOCacheEntry {
		i64 3238963513052983290, ; hash 0x2cf31c2783f96ffa, from name: aot-Xamarin.Jetbrains.Annotations.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.138, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 293
	%struct.DSOCacheEntry {
		i64 3243810660761008057, ; hash 0x2d04549c0948f7b9, from name: aot-System.Xml.XmlSerializer
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.195, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 294
	%struct.DSOCacheEntry {
		i64 3250939353211503980, ; hash 0x2d1da81e1682856c, from name: libaot-Xamarin.AndroidX.Browser.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.154, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 295
	%struct.DSOCacheEntry {
		i64 3260817401620729492, ; hash 0x2d40c02675040e94, from name: libaot-System.Memory
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.163, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 296
	%struct.DSOCacheEntry {
		i64 3281594302220646930, ; hash 0x2d8a90a198ceba12, from name: System.Security.Principal
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.179, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 297
	%struct.DSOCacheEntry {
		i64 3282577833136852042, ; hash 0x2d8e0f25bbb18c4a, from name: aot-Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.90, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 298
	%struct.DSOCacheEntry {
		i64 3289520064315143713, ; hash 0x2da6b911e3063621, from name: Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.90, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 299
	%struct.DSOCacheEntry {
		i64 3303437397778967116, ; hash 0x2dd82acf985b2a4c, from name: Xamarin.AndroidX.Annotation.Experimental
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 300
	%struct.DSOCacheEntry {
		i64 3325875462027654285, ; hash 0x2e27e21c8958b48d, from name: System.Runtime.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.106, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 301
	%struct.DSOCacheEntry {
		i64 3326186886063442925, ; hash 0x2e28fd59985fcbed, from name: aot-Xamarin.AndroidX.Collection.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.196, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 302
	%struct.DSOCacheEntry {
		i64 3344514922410554693, ; hash 0x2e6a1a9a18463545, from name: Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 303
	%struct.DSOCacheEntry {
		i64 3351688297044594944, ; hash 0x2e8396bf872d5100, from name: aot-zxing
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.197, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 304
	%struct.DSOCacheEntry {
		i64 3360524699507847380, ; hash 0x2ea2fb68cd1770d4, from name: aot-Xamarin.AndroidX.Annotation
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.91, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 305
	%struct.DSOCacheEntry {
		i64 3364105986321300450, ; hash 0x2eafb4921d723be2, from name: libaot-SkiaSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.191, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 306
	%struct.DSOCacheEntry {
		i64 3371443586592544017, ; hash 0x2ec9c6144f1e1511, from name: libaot-System.ComponentModel.EventBasedAsync
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 307
	%struct.DSOCacheEntry {
		i64 3371678680748477179, ; hash 0x2eca9be56ec54afb, from name: libaot-System.Security.Principal
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.179, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 308
	%struct.DSOCacheEntry {
		i64 3379278180018875679, ; hash 0x2ee59b99bd40ed1f, from name: libaot-Microsoft.Maui.Essentials.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.198, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 309
	%struct.DSOCacheEntry {
		i64 3387343871458221356, ; hash 0x2f02434dde5d1d2c, from name: Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.164, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 310
	%struct.DSOCacheEntry {
		i64 3411255996856937470, ; hash 0x2f5737416a942bfe, from name: Xamarin.GooglePlayServices.Basement
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.199, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 311
	%struct.DSOCacheEntry {
		i64 3413847582085635339, ; hash 0x2f606c49df8a5d0b, from name: aot-System.Text.Encoding.Extensions
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 312
	%struct.DSOCacheEntry {
		i64 3415134081241495173, ; hash 0x2f64fe5a4cbab685, from name: libaot-System.Runtime.Serialization.Formatters.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.187, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 313
	%struct.DSOCacheEntry {
		i64 3420583226354638019, ; hash 0x2f785a5243871cc3, from name: libaot-System.Reflection.TypeExtensions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.99, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 314
	%struct.DSOCacheEntry {
		i64 3425915677031941243, ; hash 0x2f8b4c282fee447b, from name: libaot-System.Runtime.Extensions
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 315
	%struct.DSOCacheEntry {
		i64 3429672777697402584, ; hash 0x2f98a5385a7b1ed8, from name: Microsoft.Maui.Essentials
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.198, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 316
	%struct.DSOCacheEntry {
		i64 3491308886800479652, ; hash 0x30739eef4ee835a4, from name: System.Net.Sockets.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.200, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 317
	%struct.DSOCacheEntry {
		i64 3494946837667399002, ; hash 0x30808ba1c00a455a, from name: Microsoft.Extensions.Configuration
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 318
	%struct.DSOCacheEntry {
		i64 3504968395820649747, ; hash 0x30a4262f95dc4d13, from name: Microsoft.Maui.Controls.Xaml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.141, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 319
	%struct.DSOCacheEntry {
		i64 3508450208084372758, ; hash 0x30b084e02d03ad16, from name: System.Net.Ping
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.94, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 320
	%struct.DSOCacheEntry {
		i64 3509847518655227625, ; hash 0x30b57bb8e53b26e9, from name: Xamarin.Kotlin.StdLib.Jdk8.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.97, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 321
	%struct.DSOCacheEntry {
		i64 3519863767463074839, ; hash 0x30d911728d679c17, from name: libaot-System.IO.Compression.Brotli
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.201, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 322
	%struct.DSOCacheEntry {
		i64 3522470458906976663, ; hash 0x30e2543832f52197, from name: Xamarin.AndroidX.SwipeRefreshLayout
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.170, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 323
	%struct.DSOCacheEntry {
		i64 3524924510499499108, ; hash 0x30eb0c2a9c63ec64, from name: aot-System.Data.DataSetExtensions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.202, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 324
	%struct.DSOCacheEntry {
		i64 3525534382690385742, ; hash 0x30ed36d78bafbf4e, from name: libaot-Xamarin.AndroidX.Startup.StartupRuntime.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.181, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 325
	%struct.DSOCacheEntry {
		i64 3531994851595924923, ; hash 0x31042a9aade235bb, from name: System.Numerics
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.203, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 326
	%struct.DSOCacheEntry {
		i64 3534503520749001150, ; hash 0x310d1439bb9c99be, from name: aot-Microsoft.Maui.Controls.Xaml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.141, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 327
	%struct.DSOCacheEntry {
		i64 3536984838292738215, ; hash 0x3115e4f87e6190a7, from name: Xamarin.AndroidX.Annotation.Experimental.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 328
	%struct.DSOCacheEntry {
		i64 3565908020027737498, ; hash 0x317ca6738378459a, from name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.204, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 329
	%struct.DSOCacheEntry {
		i64 3569692625789698928, ; hash 0x318a1887b586c370, from name: libmono-component-hot_reload
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.205, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 330
	%struct.DSOCacheEntry {
		i64 3577153083746314324, ; hash 0x31a499c6efe46854, from name: libaot-System.Collections.Immutable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.206, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 331
	%struct.DSOCacheEntry {
		i64 3583717436449942140, ; hash 0x31bbec0566f8ea7c, from name: libaot-System.Net
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.207, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 332
	%struct.DSOCacheEntry {
		i64 3584331566084909327, ; hash 0x31be1a9199b5e90f, from name: libaot-System.Net.Http.Formatting
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 333
	%struct.DSOCacheEntry {
		i64 3584501248261514691, ; hash 0x31beb4e4cf9265c3, from name: libaot-System.Xml.ReaderWriter
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.208, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 334
	%struct.DSOCacheEntry {
		i64 3597248757993004480, ; hash 0x31ebfeafb4e35dc0, from name: System.ServiceModel.Web.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.133, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 335
	%struct.DSOCacheEntry {
		i64 3604923293906189876, ; hash 0x320742a2d7cf3e34, from name: libaot-System.Reflection.Emit.Lightweight
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.209, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 336
	%struct.DSOCacheEntry {
		i64 3617300193753112415, ; hash 0x32333b5c669b1f5f, from name: Microsoft.CSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 337
	%struct.DSOCacheEntry {
		i64 3624819157652780137, ; hash 0x324df1d19aecb469, from name: Xamarin.AndroidX.VersionedParcelable.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.210, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 338
	%struct.DSOCacheEntry {
		i64 3638003163729360188, ; hash 0x327cc89a39d5f53c, from name: Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.130, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 339
	%struct.DSOCacheEntry {
		i64 3647754201059316852, ; hash 0x329f6d1e86145474, from name: System.Xml.ReaderWriter
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.208, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 340
	%struct.DSOCacheEntry {
		i64 3657389980202273675, ; hash 0x32c1a8cf2f078b8b, from name: libaot-System.Private.CoreLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.211, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 341
	%struct.DSOCacheEntry {
		i64 3659371656528649588, ; hash 0x32c8b3222885dd74, from name: Xamarin.Android.Glide.Annotations
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 342
	%struct.DSOCacheEntry {
		i64 3672777413821373748, ; hash 0x32f8539941e69d34, from name: libaot-Xamarin.AndroidX.Collection.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.196, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 343
	%struct.DSOCacheEntry {
		i64 3673950514234315711, ; hash 0x32fc7e86fb4cd3bf, from name: System.Runtime.Serialization.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.212, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 344
	%struct.DSOCacheEntry {
		i64 3682807869886927031, ; hash 0x331bf63ecc9f90b7, from name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.147, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 345
	%struct.DSOCacheEntry {
		i64 3683086715764323178, ; hash 0x331cf3daaa17b36a, from name: aot-System.Net.NameResolution
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 346
	%struct.DSOCacheEntry {
		i64 3703096612151080118, ; hash 0x33640abfb837b4b6, from name: libaot-System.Net.Requests
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.213, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 347
	%struct.DSOCacheEntry {
		i64 3707216742628388692, ; hash 0x3372adfc59beef54, from name: aot-Xamarin.AndroidX.CardView.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 348
	%struct.DSOCacheEntry {
		i64 3727469159507183293, ; hash 0x33baa1739ba646bd, from name: Xamarin.AndroidX.RecyclerView
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 349
	%struct.DSOCacheEntry {
		i64 3757256743119320929, ; hash 0x34247519df917761, from name: aot-Xamarin.GooglePlayServices.Base.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 350
	%struct.DSOCacheEntry {
		i64 3766788760912740873, ; hash 0x3446526bb6234209, from name: aot-System.Collections.Immutable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.206, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 351
	%struct.DSOCacheEntry {
		i64 3778015232232666774, ; hash 0x346e34d6413e3696, from name: libaot-System.Security.Claims.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.111, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 352
	%struct.DSOCacheEntry {
		i64 3792734155220677803, ; hash 0x34a27f9e916b74ab, from name: libaot-System.Xml
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.150, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 353
	%struct.DSOCacheEntry {
		i64 3810344663955173033, ; hash 0x34e11048a6da6ea9, from name: aot-Xamarin.AndroidX.VersionedParcelable
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.210, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 354
	%struct.DSOCacheEntry {
		i64 3814794088686254232, ; hash 0x34f0df0313677898, from name: libaot-Xamarin.AndroidX.DocumentFile.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.214, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 355
	%struct.DSOCacheEntry {
		i64 3831950323221560130, ; hash 0x352dd28434907b42, from name: Xamarin.GooglePlayServices.Basement.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.199, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 356
	%struct.DSOCacheEntry {
		i64 3865117617889807977, ; hash 0x35a3a7fec56d0e69, from name: aot-Xamarin.GooglePlayServices.Tasks
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 357
	%struct.DSOCacheEntry {
		i64 3869649043256705283, ; hash 0x35b3c14d74bf0103, from name: System.Diagnostics.Tools
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.215, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 358
	%struct.DSOCacheEntry {
		i64 3919223565570527920, ; hash 0x3663e111652bd2b0, from name: System.Security.Cryptography.Encoding
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.188, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 359
	%struct.DSOCacheEntry {
		i64 3926486732424186854, ; hash 0x367daee1356d8be6, from name: aot-Xamarin.AndroidX.DrawerLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 360
	%struct.DSOCacheEntry {
		i64 3933965368022646939, ; hash 0x369840a8bfadc09b, from name: System.Net.Requests
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.213, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 361
	%struct.DSOCacheEntry {
		i64 3934684319247098776, ; hash 0x369ace8aa005e398, from name: System.Security.SecureString.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 362
	%struct.DSOCacheEntry {
		i64 3943677120668259164, ; hash 0x36bac1725e44535c, from name: aot-System.ObjectModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 363
	%struct.DSOCacheEntry {
		i64 3957090676662399508, ; hash 0x36ea69013e78f214, from name: libaot-System.Xml.Serialization.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.216, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 364
	%struct.DSOCacheEntry {
		i64 3966267475168208030, ; hash 0x370b03412596249e, from name: System.Memory
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.163, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 365
	%struct.DSOCacheEntry {
		i64 3994531522905462024, ; hash 0x376f6d4192e15508, from name: aot-System.IO.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 366
	%struct.DSOCacheEntry {
		i64 4006972109285359177, ; hash 0x379b9fe74ed9fe49, from name: System.Xml.XmlDocument
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.217, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 367
	%struct.DSOCacheEntry {
		i64 4007760827643490102, ; hash 0x379e6d3d1c6a6f36, from name: libaot-Xamarin.KotlinX.Coroutines.Android
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.218, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 368
	%struct.DSOCacheEntry {
		i64 4009997192427317104, ; hash 0x37a65f335cf1a770, from name: System.Runtime.Serialization.Primitives
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.172, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 369
	%struct.DSOCacheEntry {
		i64 4017192615964119979, ; hash 0x37bfef6674dd13ab, from name: aot-System.Runtime.Serialization.Primitives.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.172, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 370
	%struct.DSOCacheEntry {
		i64 4028806192448886134, ; hash 0x37e931e2f1cf5576, from name: aot-System.Net.WebSockets.Client.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 371
	%struct.DSOCacheEntry {
		i64 4054259778776684218, ; hash 0x38439fc9d52356ba, from name: libaot-Xamarin.AndroidX.Arch.Core.Runtime.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 372
	%struct.DSOCacheEntry {
		i64 4074682551133317578, ; hash 0x388c2e3110c8a9ca, from name: libaot-System.Security.Cryptography.Csp.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.219, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 373
	%struct.DSOCacheEntry {
		i64 4078510067578159670, ; hash 0x3899c74c2ed9c236, from name: libaot-System.Reflection.Metadata
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 374
	%struct.DSOCacheEntry {
		i64 4082358154728349959, ; hash 0x38a7731cca80a107, from name: libaot-System.Reflection.Emit.ILGeneration
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.117, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 375
	%struct.DSOCacheEntry {
		i64 4093745415275440803, ; hash 0x38cfe7c3fe606aa3, from name: System.Diagnostics.Tracing.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.220, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 376
	%struct.DSOCacheEntry {
		i64 4095418721340757718, ; hash 0x38d5d9a0ec0016d6, from name: aot-Microsoft.Maui.Essentials
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.198, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 377
	%struct.DSOCacheEntry {
		i64 4105760315252337620, ; hash 0x38fa9740e382ebd4, from name: libaot-System.Net.WebHeaderCollection.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.221, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 378
	%struct.DSOCacheEntry {
		i64 4115927144641244248, ; hash 0x391eb5ee51baac58, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.137, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 379
	%struct.DSOCacheEntry {
		i64 4119377950914186792, ; hash 0x392af86bc3d10e28, from name: Camera.MAUI.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.182, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 380
	%struct.DSOCacheEntry {
		i64 4137384516858186512, ; hash 0x396af14c1a888b10, from name: System.Security.Cryptography.Encoding.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.188, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 381
	%struct.DSOCacheEntry {
		i64 4154383907710350974, ; hash 0x39a7562737acb67e, from name: System.ComponentModel
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 382
	%struct.DSOCacheEntry {
		i64 4167269041631776580, ; hash 0x39d51d1d3df1cf44, from name: System.Threading.ThreadPool
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.222, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 383
	%struct.DSOCacheEntry {
		i64 4186592800298148390, ; hash 0x3a19c3f868faa226, from name: libaot-Xamarin.AndroidX.VersionedParcelable.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.210, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 384
	%struct.DSOCacheEntry {
		i64 4187479170553454871, ; hash 0x3a1cea1e912fa117, from name: System.Linq.Expressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.100, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 385
	%struct.DSOCacheEntry {
		i64 4201423742386704971, ; hash 0x3a4e74a233da124b, from name: Xamarin.AndroidX.Core.Core.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.193, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 386
	%struct.DSOCacheEntry {
		i64 4202567570116092282, ; hash 0x3a5284f05958a17a, from name: Newtonsoft.Json.Bson
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.136, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 387
	%struct.DSOCacheEntry {
		i64 4205801962323029395, ; hash 0x3a5e0299f7e7ad93, from name: System.ComponentModel.TypeConverter
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.144, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 388
	%struct.DSOCacheEntry {
		i64 4220783285704279373, ; hash 0x3a933c09224f454d, from name: aot-System.Threading.Tasks.Extensions
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.223, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 389
	%struct.DSOCacheEntry {
		i64 4221931987470636147, ; hash 0x3a9750c61b0bd473, from name: libaot-System.Threading.ThreadPool
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.222, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 390
	%struct.DSOCacheEntry {
		i64 4243001330476888824, ; hash 0x3ae22b3acc95b2f8, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.224, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 391
	%struct.DSOCacheEntry {
		i64 4244996295783171795, ; hash 0x3ae941a3db0146d3, from name: aot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.173, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 392
	%struct.DSOCacheEntry {
		i64 4245825166478335344, ; hash 0x3aec337e5a5add70, from name: aot-Xamarin.GooglePlayServices.Location.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 393
	%struct.DSOCacheEntry {
		i64 4247996603072512073, ; hash 0x3af3ea6755340049, from name: Xamarin.GooglePlayServices.Tasks
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 394
	%struct.DSOCacheEntry {
		i64 4281260115819179910, ; hash 0x3b6a17646a732f86, from name: libaot-Plugin.LocalNotification
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 395
	%struct.DSOCacheEntry {
		i64 4282138915307457788, ; hash 0x3b6d36a7ddc70cfc, from name: System.Reflection.Emit
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.92, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 396
	%struct.DSOCacheEntry {
		i64 4336779140400561657, ; hash 0x3c2f55a6a4e63df9, from name: libaot-System.IO.FileSystem.Primitives.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.225, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 397
	%struct.DSOCacheEntry {
		i64 4348972226440319252, ; hash 0x3c5aa732b703d114, from name: aot-System.Xml.XmlSerializer.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.195, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 398
	%struct.DSOCacheEntry {
		i64 4364864446463818253, ; hash 0x3c931d1688353a0d, from name: aot-System.Security.Cryptography.Encoding
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.188, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 399
	%struct.DSOCacheEntry {
		i64 4368478176552248152, ; hash 0x3c9ff3c1a2716358, from name: libaot-Xamarin.AndroidX.Legacy.Support.V4
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.226, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 400
	%struct.DSOCacheEntry {
		i64 4411920538413871651, ; hash 0x3d3a4a5ab568b223, from name: aot-netstandard
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.108, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 401
	%struct.DSOCacheEntry {
		i64 4425588670699136170, ; hash 0x3d6ad972bf03e4aa, from name: Xamarin.AndroidX.Collection.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.105, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 402
	%struct.DSOCacheEntry {
		i64 4433889062591767415, ; hash 0x3d88569c5545a377, from name: aot-System.IO.Pipes.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.227, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 403
	%struct.DSOCacheEntry {
		i64 4442845440040250147, ; hash 0x3da8286375902b23, from name: System.Security.Principal.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.179, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 404
	%struct.DSOCacheEntry {
		i64 4468445964959563603, ; hash 0x3e031bee27713f53, from name: Microsoft.Win32.Primitives.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.98, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 405
	%struct.DSOCacheEntry {
		i64 4472958691645351923, ; hash 0x3e13243b368467f3, from name: aot-mscorlib
		i8 1, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 406
	%struct.DSOCacheEntry {
		i64 4480088684592380434, ; hash 0x3e2c78ec0f603a12, from name: aot-Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 407
	%struct.DSOCacheEntry {
		i64 4485509010103122468, ; hash 0x3e3fbaadf002ba24, from name: aot-System.Memory.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.163, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 408
	%struct.DSOCacheEntry {
		i64 4511511353632409648, ; hash 0x3e9c1bac5166c830, from name: libaot-System.Runtime.CompilerServices.Unsafe.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.115, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 409
	%struct.DSOCacheEntry {
		i64 4519937209358600751, ; hash 0x3eba0af1bae3ca2f, from name: aot-Xamarin.AndroidX.Loader
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.228, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 410
	%struct.DSOCacheEntry {
		i64 4531878619915090591, ; hash 0x3ee477980939fa9f, from name: libaot-Xamarin.AndroidX.Fragment.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 411
	%struct.DSOCacheEntry {
		i64 4533637005954432954, ; hash 0x3eeab6d6307abfba, from name: System.Text.RegularExpressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 412
	%struct.DSOCacheEntry {
		i64 4537756794601834247, ; hash 0x3ef959c33b5b8707, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 413
	%struct.DSOCacheEntry {
		i64 4543721488248912841, ; hash 0x3f0e8a9eb162bbc9, from name: libaot-System.Net.HttpListener
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.122, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 414
	%struct.DSOCacheEntry {
		i64 4553845421192707918, ; hash 0x3f328248843aff4e, from name: libaot-System.AppContext
		i8 1, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.161, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 415
	%struct.DSOCacheEntry {
		i64 4562889186705488620, ; hash 0x3f52a38a430d3aec, from name: libaot-System.Memory.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.163, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 416
	%struct.DSOCacheEntry {
		i64 4568237646672502847, ; hash 0x3f65a3efa37b203f, from name: libaot-Microsoft.EntityFrameworkCore.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.158, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 417
	%struct.DSOCacheEntry {
		i64 4585909008629987955, ; hash 0x3fa46bf237a77a73, from name: libaot-GoogleGson.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.120, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 418
	%struct.DSOCacheEntry {
		i64 4597275209471002803, ; hash 0x3fcccd72133a88b3, from name: aot-System.Reflection.Metadata.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 419
	%struct.DSOCacheEntry {
		i64 4600564633383719664, ; hash 0x3fd87d28c30fd2f0, from name: aot-System.Net.NetworkInformation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.176, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 420
	%struct.DSOCacheEntry {
		i64 4612482779465751747, ; hash 0x4002d4a662a99cc3, from name: Microsoft.EntityFrameworkCore.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.158, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 421
	%struct.DSOCacheEntry {
		i64 4619841365973187374, ; hash 0x401cf93ed17cbb2e, from name: libaot-System.Private.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.229, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 422
	%struct.DSOCacheEntry {
		i64 4646967399724649078, ; hash 0x407d583ab7688a76, from name: aot-Xamarin.Android.Glide.Annotations
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 423
	%struct.DSOCacheEntry {
		i64 4648377438325814801, ; hash 0x40825aa6e959b611, from name: libaot-Microsoft.Extensions.Caching.Memory.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.119, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 424
	%struct.DSOCacheEntry {
		i64 4649840642642325182, ; hash 0x40878d6db6deaebe, from name: aot-System.Net.Http.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 425
	%struct.DSOCacheEntry {
		i64 4651216096443836840, ; hash 0x408c7065821d29a8, from name: aot-System.Diagnostics.Process.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.230, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 426
	%struct.DSOCacheEntry {
		i64 4664973298644964815, ; hash 0x40bd507fc06a55cf, from name: aot-Microsoft.EntityFrameworkCore.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.131, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 427
	%struct.DSOCacheEntry {
		i64 4672453897036726049, ; hash 0x40d7e4104a437f21, from name: System.IO.FileSystem.Watcher
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.159, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 428
	%struct.DSOCacheEntry {
		i64 4675735443907349489, ; hash 0x40e38c9cf5cd0bf1, from name: libaot-System.IO.FileSystem
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.231, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 429
	%struct.DSOCacheEntry {
		i64 4676011426420077172, ; hash 0x40e4879e256fb274, from name: System.Drawing.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.232, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 430
	%struct.DSOCacheEntry {
		i64 4679026139925672438, ; hash 0x40ef3d7bd50971f6, from name: aot-GoogleGson
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.120, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 431
	%struct.DSOCacheEntry {
		i64 4704458384224729820, ; hash 0x414997f9a452badc, from name: libaot-System.Net.WebHeaderCollection
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.221, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 432
	%struct.DSOCacheEntry {
		i64 4716677666592453464, ; hash 0x417501590542f358, from name: System.Xml.XmlSerializer
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.195, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 433
	%struct.DSOCacheEntry {
		i64 4716712537701623236, ; hash 0x41752110155625c4, from name: aot-AppNetMaui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 434
	%struct.DSOCacheEntry {
		i64 4727951288059655328, ; hash 0x419d0ea5902574a0, from name: aot-Xamarin.GooglePlayServices.Basement
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.199, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 435
	%struct.DSOCacheEntry {
		i64 4728906805301616458, ; hash 0x41a073af41ee1f4a, from name: libaot-Xamarin.AndroidX.Transition
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 436
	%struct.DSOCacheEntry {
		i64 4743821336939966868, ; hash 0x41d5705f4239b194, from name: System.ComponentModel.Annotations
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 437
	%struct.DSOCacheEntry {
		i64 4746643953623332214, ; hash 0x41df7786eaf97576, from name: libaot-mscorlib
		i8 1, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 438
	%struct.DSOCacheEntry {
		i64 4748725187834767676, ; hash 0x41e6dc6604d7693c, from name: libaot-System.Private.DataContractSerialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 439
	%struct.DSOCacheEntry {
		i64 4749108355177656911, ; hash 0x41e838e31e34324f, from name: aot-Microsoft.Win32.Registry
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.233, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 440
	%struct.DSOCacheEntry {
		i64 4764816346233252143, ; hash 0x42200738c935292f, from name: System.Xml.XmlDocument.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.217, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 441
	%struct.DSOCacheEntry {
		i64 4765831871471954487, ; hash 0x4223a2d62e522a37, from name: libaot-System.Security.AccessControl.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.184, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 442
	%struct.DSOCacheEntry {
		i64 4768057870557842753, ; hash 0x422b8b5efb1b0d41, from name: aot-Xamarin.AndroidX.Concurrent.Futures.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.234, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 443
	%struct.DSOCacheEntry {
		i64 4776574393454415983, ; hash 0x4249cd1a7d13d06f, from name: libaot-Xamarin.AndroidX.LocalBroadcastManager.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.235, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 444
	%struct.DSOCacheEntry {
		i64 4778132833905139113, ; hash 0x424f567f2e8bdda9, from name: libaot-System.Runtime.InteropServices.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.236, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 445
	%struct.DSOCacheEntry {
		i64 4791705247387512029, ; hash 0x427f8e88f2e86cdd, from name: libaot-System.Resources.Reader.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.237, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 446
	%struct.DSOCacheEntry {
		i64 4794310189461587505, ; hash 0x4288cfb749e4c631, from name: Xamarin.AndroidX.Activity
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.238, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 447
	%struct.DSOCacheEntry {
		i64 4799618160137045028, ; hash 0x429bab49847b8424, from name: aot-System.Runtime.Serialization
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.212, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 448
	%struct.DSOCacheEntry {
		i64 4809057822547766521, ; hash 0x42bd349c3145ecf9, from name: System.Drawing
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.232, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 449
	%struct.DSOCacheEntry {
		i64 4821796847100292949, ; hash 0x42ea76af7a82ef55, from name: System.Private.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.229, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 450
	%struct.DSOCacheEntry {
		i64 4823555214533265396, ; hash 0x42f0b5e94cbd07f4, from name: aot-Xamarin.AndroidX.Activity.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.239, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 451
	%struct.DSOCacheEntry {
		i64 4826109218023906764, ; hash 0x42f9c8c3938d9dcc, from name: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.240, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 452
	%struct.DSOCacheEntry {
		i64 4880739103642492700, ; hash 0x43bbde5b01f81f1c, from name: aot-System.Reflection.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.135, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 453
	%struct.DSOCacheEntry {
		i64 4904118099769380138, ; hash 0x440eed6db9514d2a, from name: Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 454
	%struct.DSOCacheEntry {
		i64 4905845688753735370, ; hash 0x441510a9610c46ca, from name: libaot-Microsoft.CSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 455
	%struct.DSOCacheEntry {
		i64 4931815757766637469, ; hash 0x4471544d435ab79d, from name: System.IO.FileSystem.Watcher.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.159, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 456
	%struct.DSOCacheEntry {
		i64 4936802805617500442, ; hash 0x44830bfed2fba11a, from name: System.Security.Cryptography.Algorithms.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 457
	%struct.DSOCacheEntry {
		i64 4942169814716192606, ; hash 0x44961d4301d1175e, from name: aot-Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 458
	%struct.DSOCacheEntry {
		i64 4949216247540332023, ; hash 0x44af25f47f3bb5f7, from name: libaot-System.Diagnostics.StackTrace.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.241, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 459
	%struct.DSOCacheEntry {
		i64 4952410279526942859, ; hash 0x44ba7ee90532488b, from name: aot-System.Diagnostics.StackTrace.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.241, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 460
	%struct.DSOCacheEntry {
		i64 4978201050208161612, ; hash 0x45161f7ac2224f4c, from name: aot-Xamarin.AndroidX.Interpolator.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.242, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 461
	%struct.DSOCacheEntry {
		i64 5029111617119435182, ; hash 0x45cafe5ed231b9ae, from name: System.Net.WebClient.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 462
	%struct.DSOCacheEntry {
		i64 5045169923072412733, ; hash 0x46040b5088374c3d, from name: aot-Xamarin.Jetbrains.Annotations
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.138, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 463
	%struct.DSOCacheEntry {
		i64 5051835836669326118, ; hash 0x461bb9ed7c437326, from name: libaot-Xamarin.AndroidX.Interpolator.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.242, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 464
	%struct.DSOCacheEntry {
		i64 5058818309265384776, ; hash 0x4634887313016548, from name: Xamarin.Kotlin.StdLib.Common.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.243, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 465
	%struct.DSOCacheEntry {
		i64 5072736578407353757, ; hash 0x4665fb0aa319cd9d, from name: aot-Xamarin.Android.Glide.GifDecoder.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 466
	%struct.DSOCacheEntry {
		i64 5074164375705998164, ; hash 0x466b0d9d99e5d354, from name: aot-Microsoft.Extensions.DependencyInjection
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.160, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 467
	%struct.DSOCacheEntry {
		i64 5084339791899622993, ; hash 0x468f341a4d8f7e51, from name: aot-System.Xml
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.150, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 468
	%struct.DSOCacheEntry {
		i64 5099468265966638712, ; hash 0x46c4f35ea8519678, from name: System.Resources.ResourceManager
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.153, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 469
	%struct.DSOCacheEntry {
		i64 5103417709280584325, ; hash 0x46d2fb5e161b6285, from name: System.Collections.Specialized
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.186, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 470
	%struct.DSOCacheEntry {
		i64 5109692736403029004, ; hash 0x46e94678b0b23c0c, from name: libaot-System.Text.Encodings.Web
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.162, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 471
	%struct.DSOCacheEntry {
		i64 5153342474927477147, ; hash 0x478459ad67fc119b, from name: aot-System.Security.Cryptography.Cng
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.244, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 472
	%struct.DSOCacheEntry {
		i64 5161677616539729366, ; hash 0x47a1f671caef7dd6, from name: aot-Xamarin.AndroidX.Window
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.245, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 473
	%struct.DSOCacheEntry {
		i64 5166157643424585078, ; hash 0x47b1e10155fdd576, from name: aot-Xamarin.AndroidX.Window.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.245, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 474
	%struct.DSOCacheEntry {
		i64 5185404252742227183, ; hash 0x47f641b1c58014ef, from name: libaot-System.ComponentModel.Annotations
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 475
	%struct.DSOCacheEntry {
		i64 5205316157927637098, ; hash 0x483cff7778e0c06a, from name: Xamarin.AndroidX.LocalBroadcastManager
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.235, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 476
	%struct.DSOCacheEntry {
		i64 5232730255288553603, ; hash 0x489e647167e9d083, from name: aot-System.ComponentModel.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 477
	%struct.DSOCacheEntry {
		i64 5245831624004909525, ; hash 0x48ccf0118452b9d5, from name: libaot-System.Runtime.Serialization.Primitives
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.172, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 478
	%struct.DSOCacheEntry {
		i64 5255546469364035812, ; hash 0x48ef73ab370070e4, from name: aot-Xamarin.AndroidX.Activity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.238, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 479
	%struct.DSOCacheEntry {
		i64 5266401548478623734, ; hash 0x4916044e45a2aff6, from name: aot-Xamarin.Google.Android.Material
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 480
	%struct.DSOCacheEntry {
		i64 5266659643402539735, ; hash 0x4916ef0aade4d2d7, from name: Microsoft.Maui.Essentials.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.198, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 481
	%struct.DSOCacheEntry {
		i64 5267519814036117019, ; hash 0x4919fd5cc2f4561b, from name: System.Reflection.Emit.Lightweight.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.209, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 482
	%struct.DSOCacheEntry {
		i64 5290786973231294105, ; hash 0x496ca6b869b72699, from name: System.Runtime.Loader
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.246, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 483
	%struct.DSOCacheEntry {
		i64 5297487996514449678, ; hash 0x49847543fa23b90e, from name: libaot-System.ComponentModel.DataAnnotations
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 484
	%struct.DSOCacheEntry {
		i64 5308663384316065149, ; hash 0x49ac2938b648357d, from name: aot-System.Net.ServicePoint.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.183, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 485
	%struct.DSOCacheEntry {
		i64 5334205502128732672, ; hash 0x4a06e7a471513a00, from name: aot-System.Runtime
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.165, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 486
	%struct.DSOCacheEntry {
		i64 5348796042099802469, ; hash 0x4a3abda9415fc165, from name: Xamarin.AndroidX.Media
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.247, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 487
	%struct.DSOCacheEntry {
		i64 5366974786996218887, ; hash 0x4a7b532221632c07, from name: libaot-Microsoft.Maui.Essentials
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.198, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 488
	%struct.DSOCacheEntry {
		i64 5376510917114486089, ; hash 0x4a9d3431719e5d49, from name: Xamarin.AndroidX.VectorDrawable.Animated
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.248, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 489
	%struct.DSOCacheEntry {
		i64 5377012889353650475, ; hash 0x4a9efcbbf69f012b, from name: Xamarin.Android.Glide.Annotations.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 490
	%struct.DSOCacheEntry {
		i64 5402637973567130259, ; hash 0x4afa069cd0814a93, from name: aot-Xamarin.AndroidX.Arch.Core.Common.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.171, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 491
	%struct.DSOCacheEntry {
		i64 5408338804355907810, ; hash 0x4b0e477cea9840e2, from name: Xamarin.AndroidX.Transition
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 492
	%struct.DSOCacheEntry {
		i64 5421210907422141054, ; hash 0x4b3c0298f55eaa7e, from name: aot-WindowsBase.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 493
	%struct.DSOCacheEntry {
		i64 5423376490970181369, ; hash 0x4b43b42f2b7b6ef9, from name: System.Runtime.InteropServices.RuntimeInformation
		i8 1, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.169, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 494
	%struct.DSOCacheEntry {
		i64 5428475970428150530, ; hash 0x4b55d222411d2302, from name: System.Buffers.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 495
	%struct.DSOCacheEntry {
		i64 5438005991099355802, ; hash 0x4b77ada319ec529a, from name: aot-System.Web.HttpUtility.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 496
	%struct.DSOCacheEntry {
		i64 5440320908473006344, ; hash 0x4b7fe70acda9f908, from name: Microsoft.VisualBasic.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 497
	%struct.DSOCacheEntry {
		i64 5440481460344582099, ; hash 0x4b80791032efefd3, from name: libaot-System.Numerics.Vectors.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.175, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 498
	%struct.DSOCacheEntry {
		i64 5446034149219586269, ; hash 0x4b94333452e150dd, from name: System.Diagnostics.Debug
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.112, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 499
	%struct.DSOCacheEntry {
		i64 5453355464743436949, ; hash 0x4bae35e6edf7c295, from name: libaot-System.Reflection.DispatchProxy
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.109, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 500
	%struct.DSOCacheEntry {
		i64 5457765010617926378, ; hash 0x4bbde05c557002ea, from name: System.Xml.Serialization
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.216, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 501
	%struct.DSOCacheEntry {
		i64 5479418050698653789, ; hash 0x4c0acdaf97c1b05d, from name: libaot-System.ComponentModel.Primitives
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.104, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 502
	%struct.DSOCacheEntry {
		i64 5510000569032476011, ; hash 0x4c7774530561856b, from name: aot-System.Reflection.Emit.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.92, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 503
	%struct.DSOCacheEntry {
		i64 5527944986868979796, ; hash 0x4cb734ad603a1854, from name: libaot-Xamarin.Android.Glide.Annotations
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 504
	%struct.DSOCacheEntry {
		i64 5539438695474257105, ; hash 0x4ce00a24f2cbdcd1, from name: libaot-System.Xml.XmlDocument.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.217, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 505
	%struct.DSOCacheEntry {
		i64 5550740384747212943, ; hash 0x4d0830f88945d08f, from name: aot-Xamarin.Android.Glide.DiskLruCache
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.249, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 506
	%struct.DSOCacheEntry {
		i64 5554419957827635904, ; hash 0x4d154385e7a80ac0, from name: libaot-System.Net.Sockets
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.200, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 507
	%struct.DSOCacheEntry {
		i64 5560885507890286183, ; hash 0x4d2c3be8166b0e67, from name: Xamarin.AndroidX.ResourceInspection.Annotation.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.118, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 508
	%struct.DSOCacheEntry {
		i64 5570799893513421663, ; hash 0x4d4f74fcdfa6c35f, from name: System.IO.Compression.Brotli
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.201, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 509
	%struct.DSOCacheEntry {
		i64 5591092099223752348, ; hash 0x4d978ca430b98e9c, from name: libaot-WindowsBase
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 510
	%struct.DSOCacheEntry {
		i64 5591791169662171124, ; hash 0x4d9a087135e137f4, from name: System.Linq.Parallel
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 511
	%struct.DSOCacheEntry {
		i64 5624338208435324370, ; hash 0x4e0da9cd3271c5d2, from name: libaot-Xamarin.AndroidX.ConstraintLayout.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.250, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 512
	%struct.DSOCacheEntry {
		i64 5641232295354610839, ; hash 0x4e49aee25412b497, from name: aot-System.Net.Mail
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.251, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 513
	%struct.DSOCacheEntry {
		i64 5642869431399447073, ; hash 0x4e4f7fd9c4797a21, from name: libmono-component-hot_reload.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.205, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 514
	%struct.DSOCacheEntry {
		i64 5647286806239336998, ; hash 0x4e5f316dfea55a26, from name: Xamarin.AndroidX.Window.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.245, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 515
	%struct.DSOCacheEntry {
		i64 5661857649196835739, ; hash 0x4e92f588bd34a39b, from name: aot-Xamarin.AndroidX.Security.SecurityCrypto
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.139, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 516
	%struct.DSOCacheEntry {
		i64 5678506072386041620, ; hash 0x4ece1b2fd377f714, from name: aot-System.Buffers
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 517
	%struct.DSOCacheEntry {
		i64 5687866641190756057, ; hash 0x4eef5c9315f81ed9, from name: libaot-System.Net.HttpListener.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.122, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 518
	%struct.DSOCacheEntry {
		i64 5718066319469868703, ; hash 0x4f5aa7059e20769f, from name: System.Private.DataContractSerialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 519
	%struct.DSOCacheEntry {
		i64 5724799082821825042, ; hash 0x4f72926f3e13b212, from name: Xamarin.AndroidX.ExifInterface
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.252, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 520
	%struct.DSOCacheEntry {
		i64 5729643961183640500, ; hash 0x4f83c8d363d01bb4, from name: aot-Xamarin.AndroidX.Fragment.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 521
	%struct.DSOCacheEntry {
		i64 5740227960783468797, ; hash 0x4fa962ead44378fd, from name: System.Net.WebProxy.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.140, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 522
	%struct.DSOCacheEntry {
		i64 5745729879822869618, ; hash 0x4fbceee22e30a472, from name: libaot-System.IO.Compression.ZipFile.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.113, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 523
	%struct.DSOCacheEntry {
		i64 5753633696766002394, ; hash 0x4fd9035cf77484da, from name: libaot-System.Drawing
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.232, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 524
	%struct.DSOCacheEntry {
		i64 5758839772475388903, ; hash 0x4feb8242ecc973e7, from name: aot-Microsoft.Extensions.Caching.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 525
	%struct.DSOCacheEntry {
		i64 5759268217942071081, ; hash 0x4fed07ee28a25729, from name: aot-Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.116, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 526
	%struct.DSOCacheEntry {
		i64 5783556987928984683, ; hash 0x504352701bbc3c6b, from name: Microsoft.VisualBasic
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.253, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 527
	%struct.DSOCacheEntry {
		i64 5806416082395050786, ; hash 0x509488a9c945b322, from name: aot-System.Text.Encoding.CodePages
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.254, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 528
	%struct.DSOCacheEntry {
		i64 5821506633478762649, ; hash 0x50ca25708214f099, from name: libaot-System.Net.Ping.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.94, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 529
	%struct.DSOCacheEntry {
		i64 5862872057478554108, ; hash 0x515d1b12cd92a1fc, from name: aot-Xamarin.AndroidX.Core.Core.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.193, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 530
	%struct.DSOCacheEntry {
		i64 5900900230463535802, ; hash 0x51e4357ecbccbaba, from name: System.Security.Cryptography.Native.Android.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.123, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 531
	%struct.DSOCacheEntry {
		i64 5923381430294887701, ; hash 0x5234140705df3d15, from name: libaot-Xamarin.AndroidX.Lifecycle.Process.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.189, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 532
	%struct.DSOCacheEntry {
		i64 5947628580774689620, ; hash 0x528a38aead093b54, from name: System.Runtime.Intrinsics.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.255, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 533
	%struct.DSOCacheEntry {
		i64 5948985717485083712, ; hash 0x528f0afdb0921c40, from name: libSystem.Native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.256, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 534
	%struct.DSOCacheEntry {
		i64 5950425681055936976, ; hash 0x529428a155b371d0, from name: libaot-Microsoft.Win32.Registry.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.233, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 535
	%struct.DSOCacheEntry {
		i64 5955778668114550946, ; hash 0x52a72d24c1d120a2, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.127, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 536
	%struct.DSOCacheEntry {
		i64 5958220530006169673, ; hash 0x52afda0108751849, from name: System.Net.Requests.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.213, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 537
	%struct.DSOCacheEntry {
		i64 5962886101144695184, ; hash 0x52c06d50f6d7f190, from name: libaot-Mono.Android.Export
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.257, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 538
	%struct.DSOCacheEntry {
		i64 5978550740345035225, ; hash 0x52f81438fdea19d9, from name: System.Xml.XPath.XDocument.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.258, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 539
	%struct.DSOCacheEntry {
		i64 5979151488806146654, ; hash 0x52fa3699a489d25e, from name: System.Formats.Asn1
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.259, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 540
	%struct.DSOCacheEntry {
		i64 5983473201068900625, ; hash 0x5309912cb0c80111, from name: aot-System.Text.Encoding.CodePages.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.254, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 541
	%struct.DSOCacheEntry {
		i64 5984759512290286505, ; hash 0x530e23115c33dba9, from name: System.Security.Cryptography.Primitives
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.178, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 542
	%struct.DSOCacheEntry {
		i64 6019580974212452262, ; hash 0x5389d900c0a20fa6, from name: libaot-System.Diagnostics.Debug.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.112, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 543
	%struct.DSOCacheEntry {
		i64 6022984298749388524, ; hash 0x5395f04efeb666ec, from name: System.Net.Mail.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.251, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 544
	%struct.DSOCacheEntry {
		i64 6027563593999215487, ; hash 0x53a6352741666b7f, from name: libaot-System.Reflection.Primitives.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 545
	%struct.DSOCacheEntry {
		i64 6037857494324318918, ; hash 0x53cac766b1a192c6, from name: System.Threading.Tasks.Parallel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 546
	%struct.DSOCacheEntry {
		i64 6037906442115797419, ; hash 0x53caf3eb3d5ad1ab, from name: aot-System.IO.FileSystem.AccessControl
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.260, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 547
	%struct.DSOCacheEntry {
		i64 6069444521208265984, ; hash 0x543affa27e8f3d00, from name: aot-Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.261, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 548
	%struct.DSOCacheEntry {
		i64 6073268355799849528, ; hash 0x544895645d121a38, from name: libmono-component-debugger
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 549
	%struct.DSOCacheEntry {
		i64 6076224371281935956, ; hash 0x545315df59d4be54, from name: System.Xml.XDocument.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.262, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 550
	%struct.DSOCacheEntry {
		i64 6101054755608176391, ; hash 0x54ab4cf9b73ba707, from name: aot-Newtonsoft.Json.Bson.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.136, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 551
	%struct.DSOCacheEntry {
		i64 6102788177522843259, ; hash 0x54b1758374b3de7b, from name: Xamarin.AndroidX.SavedState.SavedState.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.152, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 552
	%struct.DSOCacheEntry {
		i64 6120656991460866797, ; hash 0x54f0f11ae8093aed, from name: aot-System.Runtime.Serialization.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.212, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 553
	%struct.DSOCacheEntry {
		i64 6121255420287301087, ; hash 0x54f3115f79a8b5df, from name: Microsoft.Win32.Registry.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.233, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 554
	%struct.DSOCacheEntry {
		i64 6149810009767629454, ; hash 0x5558839eec57528e, from name: aot-System.Runtime.CompilerServices.VisualC.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 555
	%struct.DSOCacheEntry {
		i64 6153230300087301221, ; hash 0x5564aa5b51dfb465, from name: aot-System.ServiceProcess
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 556
	%struct.DSOCacheEntry {
		i64 6153263910407647837, ; hash 0x5564c8ecd514325d, from name: aot-System.Security.Cryptography.Algorithms.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 557
	%struct.DSOCacheEntry {
		i64 6175880366989510749, ; hash 0x55b52278f9b8085d, from name: libaot-Xamarin.AndroidX.ConstraintLayout.Core.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 558
	%struct.DSOCacheEntry {
		i64 6178523303425703083, ; hash 0x55be863591297cab, from name: Microsoft.VisualBasic.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 559
	%struct.DSOCacheEntry {
		i64 6198196371300036003, ; hash 0x56046ac29f742da3, from name: libaot-Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.130, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 560
	%struct.DSOCacheEntry {
		i64 6245546595253708013, ; hash 0x56aca389be3f64ed, from name: aot-System.Runtime.CompilerServices.VisualC
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 561
	%struct.DSOCacheEntry {
		i64 6251033168959842974, ; hash 0x56c0218c3b092a9e, from name: libaot-System.Web.HttpUtility.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 562
	%struct.DSOCacheEntry {
		i64 6251069312384999852, ; hash 0x56c0426b870da1ac, from name: System.Transactions.Local
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 563
	%struct.DSOCacheEntry {
		i64 6267348516347448299, ; hash 0x56fa184510760beb, from name: aot-Xamarin.AndroidX.Legacy.Support.Core.Utils
		i8 1, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.263, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 564
	%struct.DSOCacheEntry {
		i64 6268813884089785192, ; hash 0x56ff4d0394355b68, from name: System.Formats.Tar.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.264, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 565
	%struct.DSOCacheEntry {
		i64 6278736998281604212, ; hash 0x57228e08a4ad6c74, from name: System.Private.DataContractSerialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 566
	%struct.DSOCacheEntry {
		i64 6284145129771520194, ; hash 0x5735c4b3610850c2, from name: System.Reflection.Emit.ILGeneration
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.117, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 567
	%struct.DSOCacheEntry {
		i64 6291001507563310904, ; hash 0x574e208a3bc20f38, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.265, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 568
	%struct.DSOCacheEntry {
		i64 6308061292769401015, ; hash 0x578abc5300e958b7, from name: libSystem.Native
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.256, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 569
	%struct.DSOCacheEntry {
		i64 6309031637591895059, ; hash 0x578e2ed9035dac13, from name: aot-System.ComponentModel.Primitives.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.104, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 570
	%struct.DSOCacheEntry {
		i64 6319713645133255417, ; hash 0x57b42213b45b52f9, from name: Xamarin.AndroidX.Lifecycle.Runtime
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.266, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 571
	%struct.DSOCacheEntry {
		i64 6334998129641266509, ; hash 0x57ea6f3c12081d4d, from name: aot-System.Net.Quic
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.143, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 572
	%struct.DSOCacheEntry {
		i64 6342692645518226948, ; hash 0x5805c55b2798b604, from name: Xamarin.AndroidX.CursorAdapter.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 573
	%struct.DSOCacheEntry {
		i64 6352489697598145066, ; hash 0x582893b918aa822a, from name: Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.170, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 574
	%struct.DSOCacheEntry {
		i64 6369902879187818552, ; hash 0x586670eb5fba5838, from name: libaot-Plugin.LocalNotification.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 575
	%struct.DSOCacheEntry {
		i64 6380851069551158718, ; hash 0x588d563d9544a5be, from name: Xamarin.AndroidX.Startup.StartupRuntime.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.181, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 576
	%struct.DSOCacheEntry {
		i64 6385611344971160469, ; hash 0x589e3faf92b5db95, from name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.267, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 577
	%struct.DSOCacheEntry {
		i64 6401687960814735282, ; hash 0x58d75d486341cfb2, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.137, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 578
	%struct.DSOCacheEntry {
		i64 6404578999226158050, ; hash 0x58e1a2aab8cd4be2, from name: libaot-System.Linq.Queryable
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.268, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 579
	%struct.DSOCacheEntry {
		i64 6406020188140135493, ; hash 0x58e6c16baa12e445, from name: aot-Xamarin.GooglePlayServices.Base
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 580
	%struct.DSOCacheEntry {
		i64 6465947575367127185, ; hash 0x59bba90fce0e5091, from name: System.IO.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 581
	%struct.DSOCacheEntry {
		i64 6486749723127141077, ; hash 0x5a05908141db52d5, from name: aot-Microsoft.Extensions.Caching.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 582
	%struct.DSOCacheEntry {
		i64 6488258789742214262, ; hash 0x5a0aecfe3563fc76, from name: aot-System.Collections.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.101, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 583
	%struct.DSOCacheEntry {
		i64 6496174396349718907, ; hash 0x5a270c31fd69a17b, from name: libaot-System.Runtime.Serialization.Xml.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.190, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 584
	%struct.DSOCacheEntry {
		i64 6497688098531050961, ; hash 0x5a2c6ce63e3a05d1, from name: aot-System.Threading.ThreadPool
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.222, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 585
	%struct.DSOCacheEntry {
		i64 6521880595188375514, ; hash 0x5a825fd8cfb75fda, from name: aot-Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 586
	%struct.DSOCacheEntry {
		i64 6560151584539558821, ; hash 0x5b0a571be53243a5, from name: Microsoft.Extensions.Options
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.151, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 587
	%struct.DSOCacheEntry {
		i64 6560588458386133218, ; hash 0x5b0be47183a210e2, from name: libaot-Xamarin.AndroidX.RecyclerView
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 588
	%struct.DSOCacheEntry {
		i64 6574825190052319144, ; hash 0x5b3e78ace95bcfa8, from name: GoogleGson.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.120, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 589
	%struct.DSOCacheEntry {
		i64 6591971792923354531, ; hash 0x5b7b636b7e9765a3, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 590
	%struct.DSOCacheEntry {
		i64 6594663189110128169, ; hash 0x5b84f33b0040fe29, from name: System.Runtime.Extensions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 591
	%struct.DSOCacheEntry {
		i64 6608482385487288462, ; hash 0x5bb60bb76365588e, from name: Xamarin.Android.Glide.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.269, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 592
	%struct.DSOCacheEntry {
		i64 6610894179593321960, ; hash 0x5bbe9d3af65b7de8, from name: System.Linq.Parallel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 593
	%struct.DSOCacheEntry {
		i64 6617685658146568858, ; hash 0x5bd6be0b4905fa9a, from name: System.Text.Encoding.CodePages
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.254, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 594
	%struct.DSOCacheEntry {
		i64 6635387966917840004, ; hash 0x5c15a2333b0a0c84, from name: libxamarin-debug-app-helper.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.174, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 595
	%struct.DSOCacheEntry {
		i64 6671798237668743565, ; hash 0x5c96fd260152998d, from name: SkiaSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.191, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 596
	%struct.DSOCacheEntry {
		i64 6671798237668743565, ; hash 0x5c96fd260152998d, from name: SkiaSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.167, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 597
	%struct.DSOCacheEntry {
		i64 6672263946731405092, ; hash 0x5c98a4b558923f24, from name: aot-Xamarin.AndroidX.ViewPager2.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.128, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 598
	%struct.DSOCacheEntry {
		i64 6679219254897596376, ; hash 0x5cb15a86391ed7d8, from name: Microsoft.Maui.Controls.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.192, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 599
	%struct.DSOCacheEntry {
		i64 6700811815215665556, ; hash 0x5cfe10d7f0ab9194, from name: aot-System.Net.Http.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 600
	%struct.DSOCacheEntry {
		i64 6704907064679518435, ; hash 0x5d0c9d73823ad0e3, from name: aot-Microsoft.Extensions.Logging.Debug.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.270, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 601
	%struct.DSOCacheEntry {
		i64 6730079425753728317, ; hash 0x5d660b948a37453d, from name: libaot-System.Xml.XPath
		i8 1, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.129, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 602
	%struct.DSOCacheEntry {
		i64 6772837112740759457, ; hash 0x5dfdf378527ec7a1, from name: System.Runtime.InteropServices.JavaScript
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.166, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 603
	%struct.DSOCacheEntry {
		i64 6776228679583289058, ; hash 0x5e0a001503604ee2, from name: aot-Microsoft.VisualBasic.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.253, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 604
	%struct.DSOCacheEntry {
		i64 6786606130239981554, ; hash 0x5e2ede51877147f2, from name: System.Diagnostics.TraceSource
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.107, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 605
	%struct.DSOCacheEntry {
		i64 6788149657292465783, ; hash 0x5e345a25ed1b6677, from name: libaot-System.Runtime.CompilerServices.VisualC.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 606
	%struct.DSOCacheEntry {
		i64 6790605347993621884, ; hash 0x5e3d1395f907157c, from name: libaot-Xamarin.AndroidX.Interpolator
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.242, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 607
	%struct.DSOCacheEntry {
		i64 6798329586179154312, ; hash 0x5e5884bd523ca188, from name: System.Windows
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.156, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 608
	%struct.DSOCacheEntry {
		i64 6811092106988893788, ; hash 0x5e85dc2f418a365c, from name: aot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.170, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 609
	%struct.DSOCacheEntry {
		i64 6836385375498469829, ; hash 0x5edfb8473e4301c5, from name: Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 610
	%struct.DSOCacheEntry {
		i64 6849804280171296592, ; hash 0x5f0f64b3748f7750, from name: aot-System.Threading.Timer
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.271, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 611
	%struct.DSOCacheEntry {
		i64 6876862101832370452, ; hash 0x5f6f85a57d108914, from name: System.Xml.Linq
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.194, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 612
	%struct.DSOCacheEntry {
		i64 6879679050593672945, ; hash 0x5f7987a57b551ef1, from name: libaot-Xamarin.AndroidX.CardView
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 613
	%struct.DSOCacheEntry {
		i64 6894844156784520562, ; hash 0x5faf683aead1ad72, from name: System.Numerics.Vectors
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.175, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 614
	%struct.DSOCacheEntry {
		i64 6899924208224414493, ; hash 0x5fc174829055ab1d, from name: libaot-System.Data.DataSetExtensions
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.202, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 615
	%struct.DSOCacheEntry {
		i64 6913716284728566067, ; hash 0x5ff274549d146133, from name: System.IO.Compression.Native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.272, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 616
	%struct.DSOCacheEntry {
		i64 6917769210764326931, ; hash 0x6000da71fdbdf813, from name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.102, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 617
	%struct.DSOCacheEntry {
		i64 6935204139325058492, ; hash 0x603ecb6ba149edbc, from name: libaot-System.Data
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 618
	%struct.DSOCacheEntry {
		i64 6940751003067424443, ; hash 0x605280437c451ebb, from name: aot-Xamarin.AndroidX.Tracing.Tracing.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.273, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 619
	%struct.DSOCacheEntry {
		i64 6969601061510368285, ; hash 0x60b8ff3d2982cc1d, from name: aot-System.Windows
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.156, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 620
	%struct.DSOCacheEntry {
		i64 6977556444580408693, ; hash 0x60d5429e1f73ed75, from name: libaot-System.Security.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 621
	%struct.DSOCacheEntry {
		i64 6993628010754849192, ; hash 0x610e5b9f3843b9a8, from name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.141, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 622
	%struct.DSOCacheEntry {
		i64 7005231924406374519, ; hash 0x61379551e777d077, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.137, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 623
	%struct.DSOCacheEntry {
		i64 7005623937201008400, ; hash 0x6138f9da7ed6ef10, from name: libaot-System.Reflection.Emit.Lightweight.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.209, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 624
	%struct.DSOCacheEntry {
		i64 7011053663211085209, ; hash 0x614c442918e5dd99, from name: Xamarin.AndroidX.Fragment.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 625
	%struct.DSOCacheEntry {
		i64 7019789918392632159, ; hash 0x616b4dbd03a9435f, from name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.274, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 626
	%struct.DSOCacheEntry {
		i64 7026076528261849631, ; hash 0x6181a3606fc1e21f, from name: libaot-Xamarin.Kotlin.StdLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.103, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 627
	%struct.DSOCacheEntry {
		i64 7032820184502538532, ; hash 0x619998b242789124, from name: libaot-System.Net.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 628
	%struct.DSOCacheEntry {
		i64 7055523377329201871, ; hash 0x61ea4121422be2cf, from name: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.263, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 629
	%struct.DSOCacheEntry {
		i64 7078790046120101683, ; hash 0x623cea0aba8f4733, from name: libaot-System.Data.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.145, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 630
	%struct.DSOCacheEntry {
		i64 7086827931071621775, ; hash 0x62597874a7d72a8f, from name: aot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.90, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 631
	%struct.DSOCacheEntry {
		i64 7101497697220435230, ; hash 0x628d9687c0141d1e, from name: System.Configuration
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 632
	%struct.DSOCacheEntry {
		i64 7106548671186296926, ; hash 0x629f885d4515605e, from name: libaot-System.Numerics
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.203, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 633
	%struct.DSOCacheEntry {
		i64 7112547816752919026, ; hash 0x62b4d88e3189b1f2, from name: System.IO.FileSystem
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.231, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 634
	%struct.DSOCacheEntry {
		i64 7114095377846552088, ; hash 0x62ba580dd6cac618, from name: aot-System.Net.Mail.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.251, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 635
	%struct.DSOCacheEntry {
		i64 7115462216925655511, ; hash 0x62bf332fdc9131d7, from name: aot-Microsoft.Extensions.Logging.Debug
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.270, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 636
	%struct.DSOCacheEntry {
		i64 7146110801539337461, ; hash 0x632c15e98b558cf5, from name: aot-System.Threading.ThreadPool.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.222, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 637
	%struct.DSOCacheEntry {
		i64 7146733078410969911, ; hash 0x632e4bdeab384337, from name: aot-System.Text.Encoding.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.275, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 638
	%struct.DSOCacheEntry {
		i64 7149762907828324447, ; hash 0x63390f7bcd5f085f, from name: System.ComponentModel.Annotations.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 639
	%struct.DSOCacheEntry {
		i64 7154350367321287918, ; hash 0x63495bc0f2deecee, from name: System.IO.Compression.ZipFile.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.113, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 640
	%struct.DSOCacheEntry {
		i64 7159690850612219724, ; hash 0x635c54e51c5b0f4c, from name: libaot-System.IO.FileSystem.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.231, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 641
	%struct.DSOCacheEntry {
		i64 7160851695570012272, ; hash 0x636074ad63b44870, from name: aot-System.Runtime.Handles.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 642
	%struct.DSOCacheEntry {
		i64 7163715482216656315, ; hash 0x636aa146ad7d6dbb, from name: libaot-Xamarin.AndroidX.Lifecycle.Process
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.189, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 643
	%struct.DSOCacheEntry {
		i64 7165668053779197375, ; hash 0x637191212bdfadbf, from name: aot-Microsoft.EntityFrameworkCore.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.158, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 644
	%struct.DSOCacheEntry {
		i64 7173196384442841971, ; hash 0x638c501b3ed4fb73, from name: libaot-System.ValueTuple
		i8 1, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.142, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 645
	%struct.DSOCacheEntry {
		i64 7198932752074671326, ; hash 0x63e7bf32495604de, from name: libaot-Xamarin.AndroidX.Collection
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.105, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 646
	%struct.DSOCacheEntry {
		i64 7201832913413494223, ; hash 0x63f20ce0b7ba55cf, from name: libaot-System.Windows
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.156, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 647
	%struct.DSOCacheEntry {
		i64 7204703686233576068, ; hash 0x63fc3fd499e65284, from name: libaot-Microsoft.Extensions.Caching.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 648
	%struct.DSOCacheEntry {
		i64 7206699016636673907, ; hash 0x64035692a9c92f73, from name: aot-System.Text.Encoding
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.275, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 649
	%struct.DSOCacheEntry {
		i64 7252784626773793767, ; hash 0x64a71130ef441be7, from name: System.Drawing.Primitives.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.134, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 650
	%struct.DSOCacheEntry {
		i64 7257621909282966728, ; hash 0x64b840ac88e74cc8, from name: libaot-Xamarin.AndroidX.Emoji2
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 651
	%struct.DSOCacheEntry {
		i64 7260863994773921465, ; hash 0x64c3c55562ec5eb9, from name: libaot-System.Security.Claims
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.111, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 652
	%struct.DSOCacheEntry {
		i64 7270811800166795866, ; hash 0x64e71ccf51a90a5a, from name: System.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.276, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 653
	%struct.DSOCacheEntry {
		i64 7286834274487352090, ; hash 0x6520092a53f5bb1a, from name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.157, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 654
	%struct.DSOCacheEntry {
		i64 7287078049759399551, ; hash 0x6520e6e0ae748e7f, from name: libaot-Xamarin.AndroidX.Window
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.245, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 655
	%struct.DSOCacheEntry {
		i64 7289396155428031695, ; hash 0x6529232eb762cccf, from name: Xamarin.AndroidX.Navigation.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.147, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 656
	%struct.DSOCacheEntry {
		i64 7293199643205339005, ; hash 0x6536a66f3942877d, from name: aot-Xamarin.AndroidX.CustomView
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.277, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 657
	%struct.DSOCacheEntry {
		i64 7295730150743956922, ; hash 0x653fa3eaec335dba, from name: libaot-System.Threading.Timer
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.271, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 658
	%struct.DSOCacheEntry {
		i64 7298692372030530791, ; hash 0x654a2a0acfbba4e7, from name: libaot-System.Transactions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.93, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 659
	%struct.DSOCacheEntry {
		i64 7308315287952273013, ; hash 0x656c5a0884f3ae75, from name: libaot-Microsoft.VisualBasic.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.253, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 660
	%struct.DSOCacheEntry {
		i64 7316205155833392065, ; hash 0x658861d38954abc1, from name: Microsoft.Win32.Primitives
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.98, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 661
	%struct.DSOCacheEntry {
		i64 7338192458477945005, ; hash 0x65d67f295d0740ad, from name: System.Reflection
		i8 1, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.135, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 662
	%struct.DSOCacheEntry {
		i64 7338982286544642983, ; hash 0x65d94d818a60a3a7, from name: monodroid.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.278, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 663
	%struct.DSOCacheEntry {
		i64 7343755648263762692, ; hash 0x65ea42da6c07b304, from name: System.Net.WebSockets.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 664
	%struct.DSOCacheEntry {
		i64 7348911439220114880, ; hash 0x65fc94048c8505c0, from name: libaot-Xamarin.AndroidX.Emoji2.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 665
	%struct.DSOCacheEntry {
		i64 7349431895026339542, ; hash 0x65fe6d5e9bf88ed6, from name: Xamarin.Android.Glide.DiskLruCache
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.249, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 666
	%struct.DSOCacheEntry {
		i64 7360049220918255826, ; hash 0x662425c56e3920d2, from name: System.Data.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.145, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 667
	%struct.DSOCacheEntry {
		i64 7379149050533156055, ; hash 0x666800f70db094d7, from name: libaot-Xamarin.AndroidX.VectorDrawable.Animated
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.248, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 668
	%struct.DSOCacheEntry {
		i64 7381472336305914060, ; hash 0x667041fb2ce300cc, from name: aot-System.Security.Cryptography.Primitives
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.178, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 669
	%struct.DSOCacheEntry {
		i64 7393269986360208929, ; hash 0x669a2be1a18eae21, from name: aot-System.Net.WebSockets
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 670
	%struct.DSOCacheEntry {
		i64 7415791582644558104, ; hash 0x66ea2f2763dc5918, from name: System.Configuration.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 671
	%struct.DSOCacheEntry {
		i64 7447924280570395180, ; hash 0x675c57ac2167ba2c, from name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.279, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 672
	%struct.DSOCacheEntry {
		i64 7465578309990517956, ; hash 0x679b0feb29d88cc4, from name: aot-System.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.185, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 673
	%struct.DSOCacheEntry {
		i64 7477302391979602800, ; hash 0x67c4b6e8b81f7370, from name: Xamarin.AndroidX.CardView.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 674
	%struct.DSOCacheEntry {
		i64 7484096333359613774, ; hash 0x67dcd9f676b4074e, from name: libaot-System.Net.Security
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.280, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 675
	%struct.DSOCacheEntry {
		i64 7489048572193775167, ; hash 0x67ee71ff6b419e3f, from name: System.ObjectModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 676
	%struct.DSOCacheEntry {
		i64 7514939451885975947, ; hash 0x684a6d9d9a3b798b, from name: System.Runtime.Serialization.Xml.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.190, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 677
	%struct.DSOCacheEntry {
		i64 7515511324144895830, ; hash 0x684c75bafd150756, from name: System.Collections.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.101, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 678
	%struct.DSOCacheEntry {
		i64 7527069578555012676, ; hash 0x687585e6cd6bb644, from name: aot-System.Net.WebProxy
		i8 1, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.140, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 679
	%struct.DSOCacheEntry {
		i64 7532437531913037246, ; hash 0x68889806d67f25be, from name: libaot-Xamarin.AndroidX.Navigation.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 680
	%struct.DSOCacheEntry {
		i64 7535601351437907993, ; hash 0x6893d580f968f819, from name: System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.281, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 681
	%struct.DSOCacheEntry {
		i64 7540556024932143097, ; hash 0x68a56fc0cb030ff9, from name: aot-System.Drawing.Primitives.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.134, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 682
	%struct.DSOCacheEntry {
		i64 7564660874610836040, ; hash 0x68fb12fc75798248, from name: Xamarin.AndroidX.CustomView.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.277, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 683
	%struct.DSOCacheEntry {
		i64 7574871849319874938, ; hash 0x691f59d045d1417a, from name: System.Diagnostics.TextWriterTraceListener.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.274, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 684
	%struct.DSOCacheEntry {
		i64 7592577537120840276, ; hash 0x695e410af5b2aa54, from name: System.Diagnostics.Process
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.230, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 685
	%struct.DSOCacheEntry {
		i64 7603299711682212348, ; hash 0x698458cdc3a5f1fc, from name: aot-System.Collections.NonGeneric.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.125, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 686
	%struct.DSOCacheEntry {
		i64 7639941140308737920, ; hash 0x6a0685fd2cfebf80, from name: libSystem.IO.Compression.Native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.272, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 687
	%struct.DSOCacheEntry {
		i64 7640815069151536100, ; hash 0x6a09a0d2973aa3e4, from name: libaot-System.Threading.Channels
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 688
	%struct.DSOCacheEntry {
		i64 7643894198677181568, ; hash 0x6a1491464cd29480, from name: libaot-Xamarin.AndroidX.ExifInterface
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.252, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 689
	%struct.DSOCacheEntry {
		i64 7644345471721608132, ; hash 0x6a162bb47e5513c4, from name: System.Diagnostics.FileVersionInfo.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 690
	%struct.DSOCacheEntry {
		i64 7648061494641607363, ; hash 0x6a235f688074c2c3, from name: libaot-System.Text.Encoding.CodePages.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.254, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 691
	%struct.DSOCacheEntry {
		i64 7648456707718915178, ; hash 0x6a24c6da378a246a, from name: libaot-Xamarin.AndroidX.Media
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.247, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 692
	%struct.DSOCacheEntry {
		i64 7654504624184590948, ; hash 0x6a3a4366801b8264, from name: System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.281, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 693
	%struct.DSOCacheEntry {
		i64 7658328537957887241, ; hash 0x6a47d93ace376d09, from name: libaot-Xamarin.Google.Android.Material
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 694
	%struct.DSOCacheEntry {
		i64 7663901784317435967, ; hash 0x6a5ba61157b9203f, from name: libaot-System.IO.FileSystem.AccessControl
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.260, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 695
	%struct.DSOCacheEntry {
		i64 7673446916582303699, ; hash 0x6a7d8f50a1b467d3, from name: aot-System.Xml.XDocument.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.262, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 696
	%struct.DSOCacheEntry {
		i64 7675303261932883976, ; hash 0x6a8427a6b6e81008, from name: aot-System.Runtime.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.165, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 697
	%struct.DSOCacheEntry {
		i64 7677152469418976166, ; hash 0x6a8ab97ee23b23a6, from name: aot-Xamarin.AndroidX.Lifecycle.Runtime.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.266, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 698
	%struct.DSOCacheEntry {
		i64 7694700312542370399, ; hash 0x6ac9112a7e2cda5f, from name: System.Net.Mail
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.251, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 699
	%struct.DSOCacheEntry {
		i64 7695876457946633523, ; hash 0x6acd3edd2f335533, from name: aot-System.Text.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.282, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 700
	%struct.DSOCacheEntry {
		i64 7714652370974252055, ; hash 0x6b0ff375198b9c17, from name: System.Private.CoreLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.211, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 701
	%struct.DSOCacheEntry {
		i64 7725404731275645577, ; hash 0x6b3626ac11ce9289, from name: Xamarin.AndroidX.Lifecycle.Runtime.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.240, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 702
	%struct.DSOCacheEntry {
		i64 7735176074855944702, ; hash 0x6b58dda848e391fe, from name: Microsoft.CSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 703
	%struct.DSOCacheEntry {
		i64 7740286304433625072, ; hash 0x6b6b0562539657f0, from name: libmonosgen-2.0
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.283, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 704
	%struct.DSOCacheEntry {
		i64 7744206437584297173, ; hash 0x6b78f2b973815cd5, from name: libaot-System.IO.MemoryMappedFiles
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.110, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 705
	%struct.DSOCacheEntry {
		i64 7756487412533532394, ; hash 0x6ba49434c0d996ea, from name: aot-Xamarin.Kotlin.StdLib.Jdk7.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.95, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 706
	%struct.DSOCacheEntry {
		i64 7756540058787761141, ; hash 0x6ba4c4166a21cbf5, from name: aot-System.Security.Cryptography.OpenSsl.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.284, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 707
	%struct.DSOCacheEntry {
		i64 7756672559804613692, ; hash 0x6ba53c98b62c843c, from name: libaot-System.Runtime.Intrinsics.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.255, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 708
	%struct.DSOCacheEntry {
		i64 7759661773326470811, ; hash 0x6bafdb45384d4e9b, from name: aot-Microsoft.Maui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 709
	%struct.DSOCacheEntry {
		i64 7770273181952392915, ; hash 0x6bd58e4a52043ed3, from name: aot-System.Linq.Queryable
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.268, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 710
	%struct.DSOCacheEntry {
		i64 7775464348757467397, ; hash 0x6be7ffa107672105, from name: libaot-Xamarin.AndroidX.CustomView
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.277, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 711
	%struct.DSOCacheEntry {
		i64 7778693613968946241, ; hash 0x6bf378a0ed37f441, from name: aot-Xamarin.AndroidX.DocumentFile.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.214, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 712
	%struct.DSOCacheEntry {
		i64 7780906328696880158, ; hash 0x6bfb5514b890fc1e, from name: libaot-System.Linq.Parallel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 713
	%struct.DSOCacheEntry {
		i64 7800101709867366296, ; hash 0x6c3f872dac8fb798, from name: libaot-System.Globalization.Extensions
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 714
	%struct.DSOCacheEntry {
		i64 7809085313591092968, ; hash 0x6c5f71b7e95126e8, from name: libaot-zxing
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.197, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 715
	%struct.DSOCacheEntry {
		i64 7820441508502274321, ; hash 0x6c87ca1e14ff8111, from name: System.Data
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 716
	%struct.DSOCacheEntry {
		i64 7836164640616011524, ; hash 0x6cbfa6390d64d704, from name: Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.279, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 717
	%struct.DSOCacheEntry {
		i64 7852346557833039773, ; hash 0x6cf9239740e64f9d, from name: libxamarin-debug-app-helper
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.174, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 718
	%struct.DSOCacheEntry {
		i64 7855888427540559711, ; hash 0x6d05b8e70ea8375f, from name: System.Console.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 719
	%struct.DSOCacheEntry {
		i64 7857979991546028193, ; hash 0x6d0d272b403a60a1, from name: Xamarin.AndroidX.VectorDrawable.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.124, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 720
	%struct.DSOCacheEntry {
		i64 7887176676410591982, ; hash 0x6d74e1662e330aee, from name: System.Resources.Reader.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.237, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 721
	%struct.DSOCacheEntry {
		i64 7897713672933564717, ; hash 0x6d9a50bddcf3612d, from name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.261, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 722
	%struct.DSOCacheEntry {
		i64 7912366012189275497, ; hash 0x6dce5ef7716a7569, from name: aot-System.Xml.XPath.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.129, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 723
	%struct.DSOCacheEntry {
		i64 7943954064725388365, ; hash 0x6e3e98220bfa2c4d, from name: Xamarin.KotlinX.Coroutines.Android.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.218, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 724
	%struct.DSOCacheEntry {
		i64 7948127817007369596, ; hash 0x6e4d6c237a200d7c, from name: aot-System.Private.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.285, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 725
	%struct.DSOCacheEntry {
		i64 7967256607995392853, ; hash 0x6e9161ac31f2f355, from name: Xamarin.AndroidX.Interpolator.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.242, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 726
	%struct.DSOCacheEntry {
		i64 7968925550521657015, ; hash 0x6e974f912860a6b7, from name: aot-System.Net.Sockets
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.200, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 727
	%struct.DSOCacheEntry {
		i64 7969273780906385394, ; hash 0x6e988c47dcc25ff2, from name: aot-System.IO.FileSystem.AccessControl.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.260, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 728
	%struct.DSOCacheEntry {
		i64 7974095695751206426, ; hash 0x6ea9adc96638d61a, from name: libaot-System.Text.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.282, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 729
	%struct.DSOCacheEntry {
		i64 7994158341285659513, ; hash 0x6ef0f4a8128ec379, from name: aot-Xamarin.AndroidX.LocalBroadcastManager.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.235, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 730
	%struct.DSOCacheEntry {
		i64 8009722176982666457, ; hash 0x6f283fe1f49eccd9, from name: libaot-System.ServiceProcess
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 731
	%struct.DSOCacheEntry {
		i64 8025517457475554965, ; hash 0x6f605d9b4786ce95, from name: WindowsBase
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 732
	%struct.DSOCacheEntry {
		i64 8032521455064955024, ; hash 0x6f793fb48bd9b890, from name: libaot-System.IO.Pipes.AccessControl
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.146, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 733
	%struct.DSOCacheEntry {
		i64 8046460106795142811, ; hash 0x6faac4d5cce04e9b, from name: aot-Microsoft.Maui.Controls
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.192, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 734
	%struct.DSOCacheEntry {
		i64 8051240247547515680, ; hash 0x6fbbc0590c65d320, from name: libaot-System.Diagnostics.TextWriterTraceListener
		i8 0, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.274, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 735
	%struct.DSOCacheEntry {
		i64 8065417565229572634, ; hash 0x6fee1e8b0cb4621a, from name: aot-Mono.Android.Export
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.257, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 736
	%struct.DSOCacheEntry {
		i64 8069027220385562465, ; hash 0x6ffaf1816209ff61, from name: aot-System.Text.Encodings.Web
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.162, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 737
	%struct.DSOCacheEntry {
		i64 8087206902342787202, ; hash 0x703b87d46f3aa082, from name: System.Diagnostics.DiagnosticSource
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.157, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 738
	%struct.DSOCacheEntry {
		i64 8113615946733131500, ; hash 0x70995ab73cf916ec, from name: System.Reflection.Extensions
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 739
	%struct.DSOCacheEntry {
		i64 8127069655002304285, ; hash 0x70c926cacb44cf1d, from name: libaot-System.Security.Cryptography.Cng.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.244, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 740
	%struct.DSOCacheEntry {
		i64 8150551902651424003, ; hash 0x711c93c5a0ec1d03, from name: aot-System.Xml.ReaderWriter.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.208, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 741
	%struct.DSOCacheEntry {
		i64 8152743950825243490, ; hash 0x71245d6d9da74362, from name: aot-System.ValueTuple.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.142, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 742
	%struct.DSOCacheEntry {
		i64 8177832365675968076, ; hash 0x717d7f3564cef64c, from name: System.Text.Encoding.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.275, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 743
	%struct.DSOCacheEntry {
		i64 8185542183669246576, ; hash 0x7198e33f4794aa70, from name: System.Collections
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.101, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 744
	%struct.DSOCacheEntry {
		i64 8187640529827139739, ; hash 0x71a057ae90f0109b, from name: Xamarin.KotlinX.Coroutines.Android
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.218, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 745
	%struct.DSOCacheEntry {
		i64 8189823481260868218, ; hash 0x71a819108db5027a, from name: libaot-System.Collections.Concurrent
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.155, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 746
	%struct.DSOCacheEntry {
		i64 8190527267494392940, ; hash 0x71aa99278e27746c, from name: aot-Xamarin.AndroidX.Core.Core.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.193, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 747
	%struct.DSOCacheEntry {
		i64 8228747456654734221, ; hash 0x72326236cc4df38d, from name: libaot-System.Security.Cryptography.Encoding.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.188, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 748
	%struct.DSOCacheEntry {
		i64 8245499330237193625, ; hash 0x726de5f44e825d99, from name: aot-System.Core
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 749
	%struct.DSOCacheEntry {
		i64 8251851702815229406, ; hash 0x728477674d8105de, from name: libaot-Xamarin.AndroidX.Activity.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.239, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 750
	%struct.DSOCacheEntry {
		i64 8254241629936925398, ; hash 0x728cf50792a1bad6, from name: aot-System.Web
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 751
	%struct.DSOCacheEntry {
		i64 8263085237863532237, ; hash 0x72ac603e7fa146cd, from name: libaot-System.Xml.XmlDocument
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.217, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 752
	%struct.DSOCacheEntry {
		i64 8290740647658429042, ; hash 0x730ea0b15c929a72, from name: System.Runtime.Extensions
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 753
	%struct.DSOCacheEntry {
		i64 8297784397360621324, ; hash 0x7327a6f22375670c, from name: aot-System.ValueTuple
		i8 1, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.142, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 754
	%struct.DSOCacheEntry {
		i64 8298665547085841745, ; hash 0x732ac858cbd30551, from name: aot-System.Text.Encodings.Web.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.162, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 755
	%struct.DSOCacheEntry {
		i64 8313797594473349417, ; hash 0x73608add2114c129, from name: aot-System.Data.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.145, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 756
	%struct.DSOCacheEntry {
		i64 8318905602908530212, ; hash 0x7372b092055ea624, from name: System.ComponentModel.DataAnnotations
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 757
	%struct.DSOCacheEntry {
		i64 8335746768722831773, ; hash 0x73ae85857f55a99d, from name: aot-System.Runtime.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.106, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 758
	%struct.DSOCacheEntry {
		i64 8336567361463961013, ; hash 0x73b16fd8a22cc5b5, from name: libaot-Microsoft.Extensions.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 759
	%struct.DSOCacheEntry {
		i64 8339419988800899470, ; hash 0x73bb924bb145098e, from name: aot-System.Resources.Reader
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.237, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 760
	%struct.DSOCacheEntry {
		i64 8340594550852286012, ; hash 0x73bfbe8dbb1bf63c, from name: aot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.169, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 761
	%struct.DSOCacheEntry {
		i64 8362087432769215690, ; hash 0x740c1a3742f79cca, from name: System.Private.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.285, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 762
	%struct.DSOCacheEntry {
		i64 8363732754340662945, ; hash 0x7411f2a08ac64ea1, from name: zxing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.197, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 763
	%struct.DSOCacheEntry {
		i64 8368701292315763008, ; hash 0x7423997c6fd56140, from name: System.Security.Cryptography
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 764
	%struct.DSOCacheEntry {
		i64 8375722837974120975, ; hash 0x743c8b8b6e92fa0f, from name: aot-System.Runtime.Serialization.Formatters.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.187, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 765
	%struct.DSOCacheEntry {
		i64 8377219763740060964, ; hash 0x7441dcfd9f1bad24, from name: libaot-Xamarin.AndroidX.DynamicAnimation
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 766
	%struct.DSOCacheEntry {
		i64 8382924305585776176, ; hash 0x7456213dc56da630, from name: Xamarin.AndroidX.ViewPager2.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.128, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 767
	%struct.DSOCacheEntry {
		i64 8392333777418328833, ; hash 0x74778f1b27881b01, from name: libmonodroid.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.278, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 768
	%struct.DSOCacheEntry {
		i64 8400946068439094610, ; hash 0x749627f06a86d552, from name: aot-Xamarin.AndroidX.ConstraintLayout.Core.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 769
	%struct.DSOCacheEntry {
		i64 8411503554270155775, ; hash 0x74bba9eaa33553ff, from name: aot-System.IO.FileSystem
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.231, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 770
	%struct.DSOCacheEntry {
		i64 8426740528614149034, ; hash 0x74f1cbdd2e6f0baa, from name: AppNetMaui
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 771
	%struct.DSOCacheEntry {
		i64 8426919725312979251, ; hash 0x74f26ed7aa033133, from name: Xamarin.AndroidX.Lifecycle.Process
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.189, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 772
	%struct.DSOCacheEntry {
		i64 8449868472357382742, ; hash 0x7543f69b35a26a56, from name: libaot-Xamarin.AndroidX.Activity.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.239, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 773
	%struct.DSOCacheEntry {
		i64 8451758818798867557, ; hash 0x754aadddc9c81465, from name: aot-Newtonsoft.Json.Bson
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.136, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 774
	%struct.DSOCacheEntry {
		i64 8466993038139643024, ; hash 0x7580cd4ee204d490, from name: System.Xml.ReaderWriter.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.208, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 775
	%struct.DSOCacheEntry {
		i64 8478719509125675648, ; hash 0x75aa7678ab9c3a80, from name: aot-Microsoft.Extensions.Options
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.151, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 776
	%struct.DSOCacheEntry {
		i64 8518412311883997971, ; hash 0x76377add7c28e313, from name: System.Collections.Immutable
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.206, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 777
	%struct.DSOCacheEntry {
		i64 8522025752637549819, ; hash 0x7644514538b12cfb, from name: aot-Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 778
	%struct.DSOCacheEntry {
		i64 8539930972764622299, ; hash 0x7683edf925fdcddb, from name: aot-Xamarin.AndroidX.Navigation.UI.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.286, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 779
	%struct.DSOCacheEntry {
		i64 8550103612409229541, ; hash 0x76a811ef626fb0e5, from name: Mono.Android.Export.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.257, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 780
	%struct.DSOCacheEntry {
		i64 8563666267364444763, ; hash 0x76d841191140ca5b, from name: System.Private.Uri
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.287, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 781
	%struct.DSOCacheEntry {
		i64 8572732944665407299, ; hash 0x76f877316111ef43, from name: aot-System.ComponentModel.Annotations.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 782
	%struct.DSOCacheEntry {
		i64 8575910900732583274, ; hash 0x7703c186ef90dd6a, from name: libaot-Xamarin.Kotlin.StdLib.Common.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.243, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 783
	%struct.DSOCacheEntry {
		i64 8579148903550987409, ; hash 0x770f42793756ac91, from name: aot-System.Net.Security.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.280, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 784
	%struct.DSOCacheEntry {
		i64 8597627968088623236, ; hash 0x7750e915b4e2c884, from name: aot-System.Windows.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.156, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 785
	%struct.DSOCacheEntry {
		i64 8603456179012555631, ; hash 0x77659dcfceaed36f, from name: libaot-Xamarin.GooglePlayServices.Location.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 786
	%struct.DSOCacheEntry {
		i64 8612207396229290788, ; hash 0x7784b4ff583d1b24, from name: aot-System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.281, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 787
	%struct.DSOCacheEntry {
		i64 8623099412595258045, ; hash 0x77ab673a869eb2bd, from name: libaot-System.Text.Encodings.Web.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.162, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 788
	%struct.DSOCacheEntry {
		i64 8626175481042262068, ; hash 0x77b654e585b55834, from name: Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 789
	%struct.DSOCacheEntry {
		i64 8626645781824515032, ; hash 0x77b800a1f4c5abd8, from name: System.Native
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.256, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 790
	%struct.DSOCacheEntry {
		i64 8628664141348535547, ; hash 0x77bf2c51e73afcfb, from name: Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.288, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 791
	%struct.DSOCacheEntry {
		i64 8639588376636138208, ; hash 0x77e5fbdaa2fda2e0, from name: Xamarin.AndroidX.Navigation.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.147, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 792
	%struct.DSOCacheEntry {
		i64 8645244703776865449, ; hash 0x77fa1440ecf27ca9, from name: libaot-System.Diagnostics.Tools.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.215, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 793
	%struct.DSOCacheEntry {
		i64 8646040384738694143, ; hash 0x77fce7ebd60813ff, from name: aot-Xamarin.AndroidX.Lifecycle.Process.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.189, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 794
	%struct.DSOCacheEntry {
		i64 8651559005259796579, ; hash 0x78108313cdd79063, from name: aot-System.Net.HttpListener
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.122, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 795
	%struct.DSOCacheEntry {
		i64 8653012873262651253, ; hash 0x7815ad5cd3b3d775, from name: System.Security.Cryptography.Cng.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.244, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 796
	%struct.DSOCacheEntry {
		i64 8658236679209272073, ; hash 0x78283c62ed86c309, from name: libaot-Xamarin.AndroidX.ViewPager
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.114, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 797
	%struct.DSOCacheEntry {
		i64 8659486139845940425, ; hash 0x782cacc3a6ef94c9, from name: System.Runtime.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.165, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 798
	%struct.DSOCacheEntry {
		i64 8659971956412730285, ; hash 0x782e669ca2d34bad, from name: aot-Xamarin.AndroidX.VersionedParcelable.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.210, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 799
	%struct.DSOCacheEntry {
		i64 8671401243335832124, ; hash 0x7857017cdde9b23c, from name: aot-System.IO.FileSystem.DriveInfo
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 800
	%struct.DSOCacheEntry {
		i64 8678798904678110092, ; hash 0x7871499f1e63538c, from name: SkiaSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.191, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 801
	%struct.DSOCacheEntry {
		i64 8684531736582871431, ; hash 0x7885a79a0fa0d987, from name: System.IO.Compression.FileSystem
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.177, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 802
	%struct.DSOCacheEntry {
		i64 8696232653671526320, ; hash 0x78af39861e3e6fb0, from name: libaot-Microsoft.VisualBasic.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 803
	%struct.DSOCacheEntry {
		i64 8706152889918323109, ; hash 0x78d277ed1bd279a5, from name: aot-System.Runtime.Serialization.Json
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 804
	%struct.DSOCacheEntry {
		i64 8711908280639484504, ; hash 0x78e6ea6c6f4cf258, from name: aot-System.Xml.XPath
		i8 1, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.129, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 805
	%struct.DSOCacheEntry {
		i64 8717011573162134445, ; hash 0x78f90bd7514c4bad, from name: aot-System.Resources.Writer
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.180, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 806
	%struct.DSOCacheEntry {
		i64 8722198811053178666, ; hash 0x790b799b4128bf2a, from name: aot-Xamarin.Kotlin.StdLib.Common
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.243, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 807
	%struct.DSOCacheEntry {
		i64 8730145678495508517, ; hash 0x7927b53d8422e825, from name: Xamarin.AndroidX.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 808
	%struct.DSOCacheEntry {
		i64 8747185242276956984, ; hash 0x79643ea21e750b38, from name: libaot-Xamarin.Android.Glide.DiskLruCache
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.249, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 809
	%struct.DSOCacheEntry {
		i64 8747763348793017252, ; hash 0x79664c6b07fd43a4, from name: libaot-System.Private.CoreLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.211, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 810
	%struct.DSOCacheEntry {
		i64 8760858219412156768, ; hash 0x7994d2222f9f7160, from name: System.Linq.Expressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.100, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 811
	%struct.DSOCacheEntry {
		i64 8761982123773840073, ; hash 0x7998d0518fdccac9, from name: aot-System.Text.RegularExpressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 812
	%struct.DSOCacheEntry {
		i64 8769641383188884842, ; hash 0x79b4065fdc89ed6a, from name: libaot-Xamarin.AndroidX.Arch.Core.Common.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.171, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 813
	%struct.DSOCacheEntry {
		i64 8772604801161716260, ; hash 0x79be8d9660216224, from name: aot-Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 814
	%struct.DSOCacheEntry {
		i64 8774486596666825193, ; hash 0x79c53d1208c099e9, from name: libaot-System.Resources.ResourceManager.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.153, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 815
	%struct.DSOCacheEntry {
		i64 8803357250881383258, ; hash 0x7a2bcec709a4eb5a, from name: Plugin.LocalNotification.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 816
	%struct.DSOCacheEntry {
		i64 8812786412666749070, ; hash 0x7a4d4e8cd864008e, from name: aot-System.Diagnostics.DiagnosticSource
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.157, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 817
	%struct.DSOCacheEntry {
		i64 8824907823227734965, ; hash 0x7a785ee8ab0e0bb5, from name: aot-System.Private.Uri
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.287, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 818
	%struct.DSOCacheEntry {
		i64 8829817152319216766, ; hash 0x7a89cfeaeba35c7e, from name: System.Reflection.Extensions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 819
	%struct.DSOCacheEntry {
		i64 8852993281900922886, ; hash 0x7adc267c169fc806, from name: libaot-System.Security.SecureString.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 820
	%struct.DSOCacheEntry {
		i64 8879040545617680294, ; hash 0x7b38b05543d517a6, from name: libaot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 821
	%struct.DSOCacheEntry {
		i64 8879340544350621822, ; hash 0x7b39c12e29be107e, from name: aot-Microsoft.Extensions.Configuration.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 822
	%struct.DSOCacheEntry {
		i64 8885752880049328355, ; hash 0x7b50892a693e90e3, from name: libaot-System.Diagnostics.Process.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.230, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 823
	%struct.DSOCacheEntry {
		i64 8906503468682351602, ; hash 0x7b9a41b7519893f2, from name: aot-System.Threading.Channels
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 824
	%struct.DSOCacheEntry {
		i64 8919566953064948674, ; hash 0x7bc8aae2cbbfe3c2, from name: Xamarin.AndroidX.LocalBroadcastManager.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.235, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 825
	%struct.DSOCacheEntry {
		i64 8934906610293113664, ; hash 0x7bff2a390fcf8340, from name: aot-Xamarin.AndroidX.ViewPager2
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.128, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 826
	%struct.DSOCacheEntry {
		i64 8941376889969657626, ; hash 0x7c1626e87187471a, from name: System.Xml.XDocument
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.262, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 827
	%struct.DSOCacheEntry {
		i64 8954753533646919997, ; hash 0x7c45ace50032d93d, from name: System.Runtime.Serialization.Json
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 828
	%struct.DSOCacheEntry {
		i64 8959200230209785136, ; hash 0x7c55792439408d30, from name: aot-Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.288, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 829
	%struct.DSOCacheEntry {
		i64 8967164847000689438, ; hash 0x7c71c4eb13d89b1e, from name: libaot-System.Private.Uri.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.287, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 830
	%struct.DSOCacheEntry {
		i64 8970579742937463036, ; hash 0x7c7de6bf7f1a38fc, from name: System.ServiceProcess.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 831
	%struct.DSOCacheEntry {
		i64 8989231607438237337, ; hash 0x7cc02a851d11de99, from name: aot-System.Resources.Reader.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.237, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 832
	%struct.DSOCacheEntry {
		i64 8996708296777609784, ; hash 0x7cdaba87813d3238, from name: aot-System.Security.SecureString
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 833
	%struct.DSOCacheEntry {
		i64 9024223692735279012, ; hash 0x7d3c7ba2db266fa4, from name: System.Net.WebSockets.Client.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 834
	%struct.DSOCacheEntry {
		i64 9032777207089403703, ; hash 0x7d5adf031bcf1737, from name: libaot-System.ObjectModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 835
	%struct.DSOCacheEntry {
		i64 9041676291023952799, ; hash 0x7d7a7cae8c8ddb9f, from name: aot-System.Reflection.DispatchProxy.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.109, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 836
	%struct.DSOCacheEntry {
		i64 9049979032622352945, ; hash 0x7d97fbfb38304a31, from name: libaot-System.IO.Compression
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 837
	%struct.DSOCacheEntry {
		i64 9055317871244365271, ; hash 0x7daaf3a073c44dd7, from name: monodroid
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.278, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 838
	%struct.DSOCacheEntry {
		i64 9071850823194088089, ; hash 0x7de5b0424bd19299, from name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.117, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 839
	%struct.DSOCacheEntry {
		i64 9088245146908530154, ; hash 0x7e1feecf3d2695ea, from name: aot-System.Security.Cryptography.Csp
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.219, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 840
	%struct.DSOCacheEntry {
		i64 9089904904477581872, ; hash 0x7e25d459a977a230, from name: aot-Xamarin.AndroidX.Collection.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.105, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 841
	%struct.DSOCacheEntry {
		i64 9098834300896121870, ; hash 0x7e458d96c70d940e, from name: libaot-System.Threading.Tasks.Extensions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.223, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 842
	%struct.DSOCacheEntry {
		i64 9111603110219107042, ; hash 0x7e72eac0def44ae2, from name: Microsoft.Extensions.Caching.Memory
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.119, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 843
	%struct.DSOCacheEntry {
		i64 9119050137727118245, ; hash 0x7e8d5fc91433aba5, from name: libaot-Xamarin.AndroidX.Print.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 844
	%struct.DSOCacheEntry {
		i64 9126418878914345661, ; hash 0x7ea78d9dd51bbabd, from name: aot-System.Globalization.Calendars
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.126, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 845
	%struct.DSOCacheEntry {
		i64 9137369390292547645, ; hash 0x7ece750c71ea383d, from name: aot-System.Reflection.Primitives.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 846
	%struct.DSOCacheEntry {
		i64 9138683372487561558, ; hash 0x7ed3201bc3e3d156, from name: System.Security.Cryptography.Csp
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.219, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 847
	%struct.DSOCacheEntry {
		i64 9160616992211937074, ; hash 0x7f210c9e90332732, from name: aot-Xamarin.AndroidX.Startup.StartupRuntime.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.181, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 848
	%struct.DSOCacheEntry {
		i64 9171632214465058671, ; hash 0x7f482ee7d9b8176f, from name: aot-Xamarin.GooglePlayServices.Basement.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.199, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 849
	%struct.DSOCacheEntry {
		i64 9176950239087484767, ; hash 0x7f5b139ef23edf5f, from name: System.Diagnostics.Process.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.230, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 850
	%struct.DSOCacheEntry {
		i64 9184990959724848206, ; hash 0x7f77a49d1b92e44e, from name: aot-Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.279, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 851
	%struct.DSOCacheEntry {
		i64 9202553973257348394, ; hash 0x7fb60a14da5d252a, from name: libaot-System.Net.Security.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.280, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 852
	%struct.DSOCacheEntry {
		i64 9203450558564540929, ; hash 0x7fb93985631c2201, from name: libaot-Microsoft.Maui.Controls.Compatibility
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.102, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 853
	%struct.DSOCacheEntry {
		i64 9207742526868940023, ; hash 0x7fc8790b2147e4f7, from name: libaot-System.Runtime.Serialization
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.212, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 854
	%struct.DSOCacheEntry {
		i64 9219236770475081177, ; hash 0x7ff14eff4462fdd9, from name: aot-Xamarin.AndroidX.ViewPager
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.114, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 855
	%struct.DSOCacheEntry {
		i64 9225652551807385394, ; hash 0x80081a1dc3a7bf32, from name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.164, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 856
	%struct.DSOCacheEntry {
		i64 9236407965853005161, ; hash 0x802e501bbd41b569, from name: libaot-System.Security.Principal.Windows.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 857
	%struct.DSOCacheEntry {
		i64 9247760416524359684, ; hash 0x8056a51a22da5804, from name: libaot-System.Resources.Writer.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.180, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 858
	%struct.DSOCacheEntry {
		i64 9250544137016314866, ; hash 0x806088e191ee0bf2, from name: Microsoft.EntityFrameworkCore
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.131, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 859
	%struct.DSOCacheEntry {
		i64 9292760678343160830, ; hash 0x80f6849a0f5cb3fe, from name: libaot-Xamarin.AndroidX.Print
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 860
	%struct.DSOCacheEntry {
		i64 9293571162334492259, ; hash 0x80f965bb91c2f663, from name: libaot-System.Formats.Asn1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.259, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 861
	%struct.DSOCacheEntry {
		i64 9296399646155945655, ; hash 0x81037239473136b7, from name: aot-System.Data.DataSetExtensions
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.202, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 862
	%struct.DSOCacheEntry {
		i64 9299560916216418051, ; hash 0x810ead61d22f8f03, from name: aot-System.Reflection.Metadata
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 863
	%struct.DSOCacheEntry {
		i64 9312692141327339315, ; hash 0x813d54296a634f33, from name: Xamarin.AndroidX.ViewPager2
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.128, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 864
	%struct.DSOCacheEntry {
		i64 9324707631942237306, ; hash 0x8168042fd44a7c7a, from name: Xamarin.AndroidX.AppCompat
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.116, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 865
	%struct.DSOCacheEntry {
		i64 9350214121429754699, ; hash 0x81c2a23431a9634b, from name: libaot-System.Web
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 866
	%struct.DSOCacheEntry {
		i64 9354788225964247547, ; hash 0x81d2e253e59b09fb, from name: aot-Microsoft.Maui.Graphics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 867
	%struct.DSOCacheEntry {
		i64 9367092681395718278, ; hash 0x81fe992a2cc0c886, from name: libaot-System.Xml.XDocument.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.262, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 868
	%struct.DSOCacheEntry {
		i64 9370897661222023495, ; hash 0x820c1dc613ad7147, from name: libaot-System.Runtime.InteropServices.RuntimeInformation
		i8 1, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.169, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 869
	%struct.DSOCacheEntry {
		i64 9414839596525080044, ; hash 0x82a83abb2828cdec, from name: aot-Xamarin.AndroidX.Print
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 870
	%struct.DSOCacheEntry {
		i64 9480837820460553798, ; hash 0x8392b3c41da3d646, from name: aot-System.Runtime.InteropServices.JavaScript.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.166, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 871
	%struct.DSOCacheEntry {
		i64 9486299778194654718, ; hash 0x83a61b634028c5fe, from name: aot-Xamarin.AndroidX.Navigation.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 872
	%struct.DSOCacheEntry {
		i64 9492014239021829256, ; hash 0x83ba68a8d7d88c88, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 873
	%struct.DSOCacheEntry {
		i64 9497504204951316832, ; hash 0x83cde9c124e6e960, from name: libaot-Xamarin.AndroidX.Legacy.Support.V4.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.226, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 874
	%struct.DSOCacheEntry {
		i64 9519127451472829141, ; hash 0x841abbfb8cb51ad5, from name: Microsoft.Maui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 875
	%struct.DSOCacheEntry {
		i64 9523258311667062251, ; hash 0x842968fa633395eb, from name: libaot-System.Linq.Queryable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.268, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 876
	%struct.DSOCacheEntry {
		i64 9554839972845591462, ; hash 0x84999c54e32a1ba6, from name: System.ServiceModel.Web
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.133, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 877
	%struct.DSOCacheEntry {
		i64 9562068925407811730, ; hash 0x84b34b0690bbd892, from name: Xamarin.AndroidX.Tracing.Tracing.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.273, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 878
	%struct.DSOCacheEntry {
		i64 9562699171059315569, ; hash 0x84b5883b10e9b371, from name: WindowsBase.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 879
	%struct.DSOCacheEntry {
		i64 9564066322021869238, ; hash 0x84ba63a5b463e6b6, from name: aot-System.Reflection.Emit.Lightweight.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.209, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 880
	%struct.DSOCacheEntry {
		i64 9572878646085775350, ; hash 0x84d9b268c9dd6ff6, from name: aot-Xamarin.AndroidX.Browser.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.154, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 881
	%struct.DSOCacheEntry {
		i64 9573175437195805771, ; hash 0x84dac056da8d044b, from name: aot-System.Net
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.207, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 882
	%struct.DSOCacheEntry {
		i64 9584802165301184279, ; hash 0x85040ec9712c0717, from name: System.Private.Uri.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.287, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 883
	%struct.DSOCacheEntry {
		i64 9598996433112550597, ; hash 0x85367c65f3ea4cc5, from name: aot-Xamarin.AndroidX.ConstraintLayout
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.250, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 884
	%struct.DSOCacheEntry {
		i64 9616196441223773743, ; hash 0x857397b6e984be2f, from name: libaot-System.Runtime.Intrinsics
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.255, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 885
	%struct.DSOCacheEntry {
		i64 9641796949223436837, ; hash 0x85ce8b3daae87225, from name: libaot-Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 886
	%struct.DSOCacheEntry {
		i64 9659729154652888475, ; hash 0x860e407c9991dd9b, from name: System.Text.RegularExpressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 887
	%struct.DSOCacheEntry {
		i64 9667360217193089419, ; hash 0x86295ce5cd89898b, from name: System.Diagnostics.StackTrace
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.241, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 888
	%struct.DSOCacheEntry {
		i64 9673129040906742596, ; hash 0x863ddb9cbdc2eb44, from name: libaot-Xamarin.AndroidX.ResourceInspection.Annotation
		i8 1, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.118, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 889
	%struct.DSOCacheEntry {
		i64 9692312895246255164, ; hash 0x86820339e517443c, from name: aot-System.Xml.Serialization
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.216, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 890
	%struct.DSOCacheEntry {
		i64 9700644217508604131, ; hash 0x869f9c85050c28e3, from name: System.Numerics.Vectors.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.175, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 891
	%struct.DSOCacheEntry {
		i64 9706749945738275724, ; hash 0x86b54da5a745ab8c, from name: aot-Xamarin.Google.Crypto.Tink.Android
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 892
	%struct.DSOCacheEntry {
		i64 9708289229316125428, ; hash 0x86bac59e0a2372f4, from name: aot-Camera.MAUI
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.182, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 893
	%struct.DSOCacheEntry {
		i64 9711206185481363223, ; hash 0x86c52292d2315f17, from name: libaot-Xamarin.AndroidX.Startup.StartupRuntime
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.181, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 894
	%struct.DSOCacheEntry {
		i64 9720994278474188111, ; hash 0x86e7e8cad00f054f, from name: aot-System.Security.Principal.Windows.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 895
	%struct.DSOCacheEntry {
		i64 9723757432752603539, ; hash 0x86f1b9ddcd488193, from name: libaot-Microsoft.Extensions.Logging.Debug
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.270, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 896
	%struct.DSOCacheEntry {
		i64 9730585375023143521, ; hash 0x8709fbd7fedd9a61, from name: aot-System.Collections.Immutable
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.206, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 897
	%struct.DSOCacheEntry {
		i64 9759402295642527326, ; hash 0x87705cae2be7965e, from name: aot-System.Security.AccessControl.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.184, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 898
	%struct.DSOCacheEntry {
		i64 9759667989446082388, ; hash 0x87714e53d4af3f54, from name: aot-Xamarin.AndroidX.DocumentFile
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.214, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 899
	%struct.DSOCacheEntry {
		i64 9783785228567974479, ; hash 0x87c6fcd42382124f, from name: libaot-System.Threading.Thread
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 900
	%struct.DSOCacheEntry {
		i64 9785861402587091236, ; hash 0x87ce5d191268d124, from name: aot-System.Linq.Queryable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.268, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 901
	%struct.DSOCacheEntry {
		i64 9803047054801588640, ; hash 0x880b6b5b89e351a0, from name: Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.224, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 902
	%struct.DSOCacheEntry {
		i64 9808040346124881443, ; hash 0x881d28bac5790e23, from name: aot-System.Runtime.Loader.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.246, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 903
	%struct.DSOCacheEntry {
		i64 9819766499659454791, ; hash 0x8846d19aa57b9947, from name: libaot-System.Text.Encoding.CodePages
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.254, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 904
	%struct.DSOCacheEntry {
		i64 9825649861376906464, ; hash 0x885bb87d8abc94e0, from name: Xamarin.AndroidX.Concurrent.Futures
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.234, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 905
	%struct.DSOCacheEntry {
		i64 9836529246295212050, ; hash 0x88825f3bbc2ac012, from name: System.Reflection.Metadata
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 906
	%struct.DSOCacheEntry {
		i64 9846352401182273129, ; hash 0x88a5455735c8ae69, from name: aot-Xamarin.Kotlin.StdLib.Jdk8.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.97, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 907
	%struct.DSOCacheEntry {
		i64 9872301298376226842, ; hash 0x890175b9a557b81a, from name: libaot-Microsoft.Extensions.Logging.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.289, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 908
	%struct.DSOCacheEntry {
		i64 9878540403917854255, ; hash 0x8917a0289ade162f, from name: Xamarin.Kotlin.StdLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.103, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 909
	%struct.DSOCacheEntry {
		i64 9901757312158402783, ; hash 0x896a1bd04b5408df, from name: aot-System.Diagnostics.Tools.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.215, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 910
	%struct.DSOCacheEntry {
		i64 9907349773706910547, ; hash 0x897dfa20b758db53, from name: Xamarin.AndroidX.Emoji2.ViewsHelper
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.148, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 911
	%struct.DSOCacheEntry {
		i64 9913979743105821016, ; hash 0x8995880cc23da958, from name: libaot-System.Diagnostics.Process
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.230, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 912
	%struct.DSOCacheEntry {
		i64 9921778862272270480, ; hash 0x89b13d4eb1b7d090, from name: aot-System.Reflection.Emit.ILGeneration
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.117, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 913
	%struct.DSOCacheEntry {
		i64 9925079997098791124, ; hash 0x89bcf7ac0a6890d4, from name: Xamarin.AndroidX.AsyncLayoutInflater.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 914
	%struct.DSOCacheEntry {
		i64 9925952136629214562, ; hash 0x89c010e0d9505d62, from name: libaot-System.Globalization
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.290, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 915
	%struct.DSOCacheEntry {
		i64 9941896055066979463, ; hash 0x89f8b5c9a41fec87, from name: aot-Xamarin.Google.Crypto.Tink.Android.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 916
	%struct.DSOCacheEntry {
		i64 9944390900557743243, ; hash 0x8a0192d61f5f048b, from name: libaot-Microsoft.EntityFrameworkCore.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.131, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 917
	%struct.DSOCacheEntry {
		i64 9956195530459977388, ; hash 0x8a2b8315b36616ac, from name: Microsoft.Maui
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 918
	%struct.DSOCacheEntry {
		i64 10015320022696718808, ; hash 0x8afd907f48b1f1d8, from name: aot-Xamarin.Kotlin.StdLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.103, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 919
	%struct.DSOCacheEntry {
		i64 10016634319500838231, ; hash 0x8b023bd7dad58557, from name: aot-System.Transactions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.93, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 920
	%struct.DSOCacheEntry {
		i64 10017511394021241210, ; hash 0x8b055989ae10717a, from name: Microsoft.Extensions.Logging.Debug
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.270, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 921
	%struct.DSOCacheEntry {
		i64 10031883225957241841, ; hash 0x8b3868a48f6193f1, from name: libaot-Xamarin.Kotlin.StdLib.Jdk8
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.97, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 922
	%struct.DSOCacheEntry {
		i64 10035256709012911358, ; hash 0x8b4464ceca91f4fe, from name: aot-Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.148, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 923
	%struct.DSOCacheEntry {
		i64 10036215306110403221, ; hash 0x8b47cca5920c8295, from name: System.Runtime.Serialization.Primitives.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.172, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 924
	%struct.DSOCacheEntry {
		i64 10038591806013433352, ; hash 0x8b503e0f9293e608, from name: libaot-Microsoft.Extensions.Logging
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.289, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 925
	%struct.DSOCacheEntry {
		i64 10044247333979866345, ; hash 0x8b6455bbca08c4e9, from name: libaot-System.Net.WebProxy.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.140, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 926
	%struct.DSOCacheEntry {
		i64 10051358222726253779, ; hash 0x8b7d990c97ccccd3, from name: System.Private.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.285, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 927
	%struct.DSOCacheEntry {
		i64 10056809455879427758, ; hash 0x8b90f6eab77b96ae, from name: libaot-Microsoft.VisualBasic
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.253, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 928
	%struct.DSOCacheEntry {
		i64 10062311874857320220, ; hash 0x8ba483567810bf1c, from name: Xamarin.AndroidX.Arch.Core.Common.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.171, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 929
	%struct.DSOCacheEntry {
		i64 10078727084704864206, ; hash 0x8bded4e257f117ce, from name: System.Net.WebSockets.Client
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 930
	%struct.DSOCacheEntry {
		i64 10079537287503667857, ; hash 0x8be1b5c261f5e291, from name: Newtonsoft.Json.Bson.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.136, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 931
	%struct.DSOCacheEntry {
		i64 10089571585547156312, ; hash 0x8c055be67469bb58, from name: System.IO.FileSystem.AccessControl
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.260, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 932
	%struct.DSOCacheEntry {
		i64 10092835686693276772, ; hash 0x8c10f49539bd0c64, from name: Microsoft.Maui.Controls
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.192, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 933
	%struct.DSOCacheEntry {
		i64 10100633424984079765, ; hash 0x8c2ca895a69cfd95, from name: libaot-System.Runtime
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.165, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 934
	%struct.DSOCacheEntry {
		i64 10105485790837105934, ; hash 0x8c3de5c91d9a650e, from name: System.Threading.Tasks.Parallel
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 935
	%struct.DSOCacheEntry {
		i64 10113526407305038838, ; hash 0x8c5a76af05f30bf6, from name: libaot-System.Data.DataSetExtensions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.202, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 936
	%struct.DSOCacheEntry {
		i64 10117538216423255955, ; hash 0x8c68b7671f58ef93, from name: System.Collections.Specialized.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.186, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 937
	%struct.DSOCacheEntry {
		i64 10125640814986396946, ; hash 0x8c8580ac5c760512, from name: aot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.261, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 938
	%struct.DSOCacheEntry {
		i64 10130037973127842806, ; hash 0x8c951fdd8580cbf6, from name: aot-Xamarin.AndroidX.Interpolator
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.242, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 939
	%struct.DSOCacheEntry {
		i64 10131599475156204988, ; hash 0x8c9aac0b0b383dbc, from name: libaot-System.Core
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 940
	%struct.DSOCacheEntry {
		i64 10144174818098638028, ; hash 0x8cc759403c3b6ccc, from name: libaot-Xamarin.AndroidX.Collection.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.196, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 941
	%struct.DSOCacheEntry {
		i64 10176918946759706439, ; hash 0x8d3baddcc98e0747, from name: aot-Xamarin.AndroidX.Legacy.Support.V4
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.226, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 942
	%struct.DSOCacheEntry {
		i64 10195674054964728829, ; hash 0x8d7e4f88b3d6d3fd, from name: aot-System.Runtime.Serialization.Xml.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.190, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 943
	%struct.DSOCacheEntry {
		i64 10201995597961695245, ; hash 0x8d94c4f1a09b100d, from name: libaot-Xamarin.GooglePlayServices.Location
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 944
	%struct.DSOCacheEntry {
		i64 10202443004866537339, ; hash 0x8d965bdbaa3d277b, from name: aot-System.Security.Cryptography
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 945
	%struct.DSOCacheEntry {
		i64 10205933005510771811, ; hash 0x8da2c1fec2e78463, from name: aot-System.Diagnostics.Debug.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.112, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 946
	%struct.DSOCacheEntry {
		i64 10208416596141509425, ; hash 0x8dab94cec4378b31, from name: System.Diagnostics.Contracts.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 947
	%struct.DSOCacheEntry {
		i64 10214437830394522368, ; hash 0x8dc0f9169cfa2b00, from name: aot-System.Reflection.Emit.Lightweight
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.209, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 948
	%struct.DSOCacheEntry {
		i64 10224492561641212282, ; hash 0x8de4b1d0293f897a, from name: aot-System.Private.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.229, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 949
	%struct.DSOCacheEntry {
		i64 10226222362177979215, ; hash 0x8dead70ebbc6434f, from name: Xamarin.Kotlin.StdLib.Jdk7
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.95, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 950
	%struct.DSOCacheEntry {
		i64 10228817684246477515, ; hash 0x8df40f7d3dbebacb, from name: System.IO.Pipes.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.227, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 951
	%struct.DSOCacheEntry {
		i64 10229024438826829339, ; hash 0x8df4cb880b10061b, from name: Xamarin.AndroidX.CustomView
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.277, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 952
	%struct.DSOCacheEntry {
		i64 10239198197289022346, ; hash 0x8e18f082c63b738a, from name: aot-Xamarin.AndroidX.Emoji2
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 953
	%struct.DSOCacheEntry {
		i64 10245369515835430794, ; hash 0x8e2edd4ad7fc978a, from name: System.Reflection.Emit.Lightweight
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.209, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 954
	%struct.DSOCacheEntry {
		i64 10250511724214772916, ; hash 0x8e41221a87cc64b4, from name: Xamarin.AndroidX.SlidingPaneLayout.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 955
	%struct.DSOCacheEntry {
		i64 10273345953350871244, ; hash 0x8e9241b6cc2ce8cc, from name: netstandard.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.108, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 956
	%struct.DSOCacheEntry {
		i64 10274941455595295611, ; hash 0x8e97ecd09cb1537b, from name: aot-System.Net.HttpListener.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.122, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 957
	%struct.DSOCacheEntry {
		i64 10284344054184125450, ; hash 0x8eb9546db18ba40a, from name: libaot-Microsoft.Win32.Primitives
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.98, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 958
	%struct.DSOCacheEntry {
		i64 10290279544697180275, ; hash 0x8ece6ab9c524d073, from name: aot-Xamarin.AndroidX.ExifInterface.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.252, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 959
	%struct.DSOCacheEntry {
		i64 10291981562957691400, ; hash 0x8ed476b3c6f67a08, from name: aot-System.ComponentModel.TypeConverter
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.144, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 960
	%struct.DSOCacheEntry {
		i64 10318218263549127400, ; hash 0x8f31acd7a9cb2ae8, from name: aot-System.Formats.Asn1
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.259, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 961
	%struct.DSOCacheEntry {
		i64 10340237239855826389, ; hash 0x8f7fe6fc16df45d5, from name: libaot-System.Reflection.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.135, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 962
	%struct.DSOCacheEntry {
		i64 10342747894815587010, ; hash 0x8f88d2697fe6fac2, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.265, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 963
	%struct.DSOCacheEntry {
		i64 10356807666685550219, ; hash 0x8fbac5b33bd59e8b, from name: libaot-System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.281, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 964
	%struct.DSOCacheEntry {
		i64 10360315726388337145, ; hash 0x8fc73c43084519f9, from name: libaot-System.Drawing.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.232, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 965
	%struct.DSOCacheEntry {
		i64 10360651442923773544, ; hash 0x8fc86d98211c1e68, from name: System.Text.Encoding
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.275, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 966
	%struct.DSOCacheEntry {
		i64 10376576884623852283, ; hash 0x900101b2f888c2fb, from name: Xamarin.AndroidX.Tracing.Tracing
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.273, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 967
	%struct.DSOCacheEntry {
		i64 10377640695631378435, ; hash 0x9004c93ac5bef803, from name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.240, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 968
	%struct.DSOCacheEntry {
		i64 10385124814576326370, ; hash 0x901f5fff00ea96e2, from name: libaot-System.Private.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.285, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 969
	%struct.DSOCacheEntry {
		i64 10387475612650146223, ; hash 0x9027ba08d50b89af, from name: libaot-System.Runtime.Serialization.Formatters
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.187, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 970
	%struct.DSOCacheEntry {
		i64 10392419804969934685, ; hash 0x90394ac04ff79f5d, from name: libaot-System.Runtime.Loader
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.246, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 971
	%struct.DSOCacheEntry {
		i64 10394555035159432904, ; hash 0x9040e0bb54ed0ec8, from name: System.Net.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.207, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 972
	%struct.DSOCacheEntry {
		i64 10403090626863083606, ; hash 0x905f33cea45eb056, from name: mono-component-debugger.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 973
	%struct.DSOCacheEntry {
		i64 10430153318873392755, ; hash 0x90bf592ea44f6673, from name: Xamarin.AndroidX.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 974
	%struct.DSOCacheEntry {
		i64 10431089073467423858, ; hash 0x90c2ac3efc7bfc72, from name: libaot-System.Private.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.285, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 975
	%struct.DSOCacheEntry {
		i64 10435618303378603777, ; hash 0x90d2c38e80723f01, from name: aot-Xamarin.AndroidX.Collection.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.196, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 976
	%struct.DSOCacheEntry {
		i64 10437139338610198358, ; hash 0x90d82aee1d1dc756, from name: libaot-Xamarin.AndroidX.Concurrent.Futures.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.234, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 977
	%struct.DSOCacheEntry {
		i64 10445573484590211502, ; hash 0x90f621bdc03d21ae, from name: aot-Xamarin.AndroidX.Activity
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.238, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 978
	%struct.DSOCacheEntry {
		i64 10449162388684920792, ; hash 0x9102e1d499efd7d8, from name: libaot-Xamarin.AndroidX.Media.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.247, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 979
	%struct.DSOCacheEntry {
		i64 10450970453325464374, ; hash 0x91094e4174914336, from name: aot-System.Runtime.Serialization.Formatters
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.187, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 980
	%struct.DSOCacheEntry {
		i64 10451298317062789990, ; hash 0x910a78722e2a5b66, from name: aot-System.Configuration.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 981
	%struct.DSOCacheEntry {
		i64 10454242804635691778, ; hash 0x9114ee711dfe6b02, from name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.240, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 982
	%struct.DSOCacheEntry {
		i64 10462325736163448418, ; hash 0x9131a5d344731662, from name: libaot-System.Text.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.282, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 983
	%struct.DSOCacheEntry {
		i64 10469210094865300319, ; hash 0x914a1b1cef613b5f, from name: aot-System.IO.FileSystem.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.231, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 984
	%struct.DSOCacheEntry {
		i64 10484059796581909322, ; hash 0x917edcd68b38034a, from name: libaot-System.Net.Mail
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.251, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 985
	%struct.DSOCacheEntry {
		i64 10484826484908863027, ; hash 0x918196231499ae33, from name: xamarin-debug-app-helper
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.174, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 986
	%struct.DSOCacheEntry {
		i64 10512098364414578010, ; hash 0x91e279c456e54d5a, from name: libaot-Xamarin.AndroidX.CursorAdapter
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 987
	%struct.DSOCacheEntry {
		i64 10537870660453903817, ; hash 0x923e09889d5dadc9, from name: libaot-Xamarin.AndroidX.SavedState.SavedState.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.152, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 988
	%struct.DSOCacheEntry {
		i64 10561557058910284153, ; hash 0x92923030035de979, from name: libaot-Microsoft.CSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 989
	%struct.DSOCacheEntry {
		i64 10564753587979417148, ; hash 0x929d8b69ef0bf63c, from name: libaot-Xamarin.Google.Guava.ListenableFuture
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.149, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 990
	%struct.DSOCacheEntry {
		i64 10595762989148858956, ; hash 0x930bb64cc472ea4c, from name: System.Xml.XPath.XDocument
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.258, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 991
	%struct.DSOCacheEntry {
		i64 10616279736318774185, ; hash 0x93549a2c37754ba9, from name: aot-System.IO
		i8 1, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 992
	%struct.DSOCacheEntry {
		i64 10638196514328206315, ; hash 0x93a2775dbf54dbeb, from name: aot-System.IO.FileSystem.Watcher
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.159, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 993
	%struct.DSOCacheEntry {
		i64 10657322552275964462, ; hash 0x93e66a65792b122e, from name: aot-System.Runtime.InteropServices
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.236, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 994
	%struct.DSOCacheEntry {
		i64 10675149072167514807, ; hash 0x9425bf8592e2b2b7, from name: aot-Microsoft.EntityFrameworkCore
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.131, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 995
	%struct.DSOCacheEntry {
		i64 10686502423950929984, ; hash 0x944e1555c6f23040, from name: libaot-netstandard
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.108, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 996
	%struct.DSOCacheEntry {
		i64 10687141298818528870, ; hash 0x94505a636c7c3666, from name: aot-System.IO.FileSystem.DriveInfo.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 997
	%struct.DSOCacheEntry {
		i64 10690570724709643647, ; hash 0x945c896edc82357f, from name: System.Reflection.Emit.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.92, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 998
	%struct.DSOCacheEntry {
		i64 10738576877450676954, ; hash 0x950716c64dabcada, from name: aot-System.Security.Cryptography.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 999
	%struct.DSOCacheEntry {
		i64 10769655153368559797, ; hash 0x9575804d49fcf0b5, from name: libaot-Microsoft.Maui.Graphics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1000
	%struct.DSOCacheEntry {
		i64 10772870150620395050, ; hash 0x9580ec532b23362a, from name: libaot-Xamarin.AndroidX.AsyncLayoutInflater
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1001
	%struct.DSOCacheEntry {
		i64 10785150219063592792, ; hash 0x95ac8cfb68830758, from name: System.Net.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1002
	%struct.DSOCacheEntry {
		i64 10802119357986192625, ; hash 0x95e8d652f2233cf1, from name: libaot-System.Threading.Tasks
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1003
	%struct.DSOCacheEntry {
		i64 10822644899632537592, ; hash 0x9631c23204ca5ff8, from name: System.Linq.Queryable
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.268, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1004
	%struct.DSOCacheEntry {
		i64 10827433220396269482, ; hash 0x9642c525d2fbbfaa, from name: aot-Xamarin.AndroidX.SavedState
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.132, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1005
	%struct.DSOCacheEntry {
		i64 10828441735335428004, ; hash 0x96465a6301aebfa4, from name: aot-System.Private.DataContractSerialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1006
	%struct.DSOCacheEntry {
		i64 10830817578243619689, ; hash 0x964ecb340a447b69, from name: System.Formats.Tar
		i8 1, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.264, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1007
	%struct.DSOCacheEntry {
		i64 10839453947355855891, ; hash 0x966d79ef6b59fc13, from name: libaot-Xamarin.AndroidX.SlidingPaneLayout.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1008
	%struct.DSOCacheEntry {
		i64 10847732767863316357, ; hash 0x968ae37a86db9f85, from name: Xamarin.AndroidX.Arch.Core.Common
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.171, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1009
	%struct.DSOCacheEntry {
		i64 10891427439346915915, ; hash 0x97261f8d03371a4b, from name: Xamarin.AndroidX.Navigation.UI.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.286, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1010
	%struct.DSOCacheEntry {
		i64 10899834349646441345, ; hash 0x9743fd975946eb81, from name: System.Web
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1011
	%struct.DSOCacheEntry {
		i64 10909187495076860591, ; hash 0x9765383a383092af, from name: libaot-System.Security.AccessControl
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.184, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1012
	%struct.DSOCacheEntry {
		i64 10959662263064203642, ; hash 0x98188ac2f032117a, from name: aot-Xamarin.AndroidX.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.288, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1013
	%struct.DSOCacheEntry {
		i64 10964653383833615866, ; hash 0x982a4628ccaffdfa, from name: System.Diagnostics.Tracing
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.220, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1014
	%struct.DSOCacheEntry {
		i64 10964819186949937619, ; hash 0x982adcf4d889d9d3, from name: System.Globalization.Extensions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1015
	%struct.DSOCacheEntry {
		i64 10980007583825662638, ; hash 0x9860d2b9110612ae, from name: Microsoft.Extensions.Configuration.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1016
	%struct.DSOCacheEntry {
		i64 10999199133474082697, ; hash 0x98a50155ec81cf89, from name: aot-System.Runtime.Intrinsics
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.255, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1017
	%struct.DSOCacheEntry {
		i64 11002392021536510416, ; hash 0x98b059401b4691d0, from name: aot-Xamarin.AndroidX.SlidingPaneLayout.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1018
	%struct.DSOCacheEntry {
		i64 11002576679268595294, ; hash 0x98b1013215cd365e, from name: Microsoft.Extensions.Logging.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.291, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1019
	%struct.DSOCacheEntry {
		i64 11023048688141570732, ; hash 0x98f9bc61168392ac, from name: System.Core
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1020
	%struct.DSOCacheEntry {
		i64 11025662355949164213, ; hash 0x9903057f0bbf16b5, from name: libaot-System.IO.IsolatedStorage.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.292, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1021
	%struct.DSOCacheEntry {
		i64 11031718967604308070, ; hash 0x991889f3d5fe6866, from name: libaot-System.Net.Http.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1022
	%struct.DSOCacheEntry {
		i64 11037814507248023548, ; hash 0x992e31d0412bf7fc, from name: System.Xml
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.150, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1023
	%struct.DSOCacheEntry {
		i64 11043797956829943227, ; hash 0x994373baac0895bb, from name: aot-System.Diagnostics.TraceSource
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.107, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1024
	%struct.DSOCacheEntry {
		i64 11058657390679514429, ; hash 0x99783e4e38335d3d, from name: aot-System.Net.NetworkInformation
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.176, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1025
	%struct.DSOCacheEntry {
		i64 11063900969707219733, ; hash 0x998adf50197fab15, from name: libaot-System.Numerics.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.203, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1026
	%struct.DSOCacheEntry {
		i64 11112238375867107341, ; hash 0x9a3699ed7d05c80d, from name: libaot-System.Diagnostics.Tracing.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.220, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1027
	%struct.DSOCacheEntry {
		i64 11116516824914593865, ; hash 0x9a45cd2788b00849, from name: libaot-System.IO.FileSystem.Watcher
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.159, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1028
	%struct.DSOCacheEntry {
		i64 11117789032719138129, ; hash 0x9a4a52387ef53d51, from name: libaot-System.Reflection
		i8 1, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.135, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1029
	%struct.DSOCacheEntry {
		i64 11155155660125070409, ; hash 0x9acf12f867f16449, from name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.291, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1030
	%struct.DSOCacheEntry {
		i64 11157521040508052244, ; hash 0x9ad77a45716de314, from name: libaot-System.IO.Compression.FileSystem.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.177, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1031
	%struct.DSOCacheEntry {
		i64 11158564309551918097, ; hash 0x9adb2f1e7231ac11, from name: libaot-System.Threading.Channels.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1032
	%struct.DSOCacheEntry {
		i64 11162124722117608902, ; hash 0x9ae7d54b986d05c6, from name: Xamarin.AndroidX.ViewPager
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.114, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1033
	%struct.DSOCacheEntry {
		i64 11164818937994912957, ; hash 0x9af167ab9cbda4bd, from name: System.Security.Cryptography.Native.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.123, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1034
	%struct.DSOCacheEntry {
		i64 11171214345979581187, ; hash 0x9b08204291dc5303, from name: libaot-System.Text.RegularExpressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1035
	%struct.DSOCacheEntry {
		i64 11175324742386364903, ; hash 0x9b16baa4cf92b1e7, from name: System.Threading.Tasks.Extensions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.223, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1036
	%struct.DSOCacheEntry {
		i64 11188319605227840848, ; hash 0x9b44e5671724e550, from name: System.Threading.Overlapped
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.96, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1037
	%struct.DSOCacheEntry {
		i64 11192348097445619853, ; hash 0x9b53354b86c3e88d, from name: aot-Xamarin.AndroidX.ResourceInspection.Annotation
		i8 1, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.118, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1038
	%struct.DSOCacheEntry {
		i64 11201657772120486503, ; hash 0x9b74486512bc3267, from name: System.Xml.XPath.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.129, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1039
	%struct.DSOCacheEntry {
		i64 11212038206026375799, ; hash 0x9b9929582e4f6277, from name: aot-System.Runtime.InteropServices.RuntimeInformation
		i8 1, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.169, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1040
	%struct.DSOCacheEntry {
		i64 11226772266259724153, ; hash 0x9bcd81e4e89e3779, from name: aot-Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.263, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1041
	%struct.DSOCacheEntry {
		i64 11245267750673177240, ; hash 0x9c0f37707307da98, from name: aot-System.Numerics.Vectors.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.175, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1042
	%struct.DSOCacheEntry {
		i64 11260568997247954509, ; hash 0x9c4593d789bdae4d, from name: Xamarin.AndroidX.Transition.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1043
	%struct.DSOCacheEntry {
		i64 11263951250740447317, ; hash 0x9c5197fbcbb38855, from name: aot-Xamarin.AndroidX.Navigation.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.147, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1044
	%struct.DSOCacheEntry {
		i64 11265074437475878588, ; hash 0x9c559584161546bc, from name: Xamarin.Kotlin.StdLib.Jdk7.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.95, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1045
	%struct.DSOCacheEntry {
		i64 11270596618290860596, ; hash 0x9c6933e8fff21234, from name: libaot-System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.281, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1046
	%struct.DSOCacheEntry {
		i64 11277712621019035171, ; hash 0x9c827be07ec77623, from name: aot-System.Web.HttpUtility
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1047
	%struct.DSOCacheEntry {
		i64 11293286754667957794, ; hash 0x9cb9d0780e9b8e22, from name: aot-Xamarin.Android.Glide.DiskLruCache.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.249, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1048
	%struct.DSOCacheEntry {
		i64 11297620656358036086, ; hash 0x9cc936212d561276, from name: libaot-System.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.276, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1049
	%struct.DSOCacheEntry {
		i64 11304522493790131002, ; hash 0x9ce1bb506dc6133a, from name: Xamarin.AndroidX.ConstraintLayout.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.250, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1050
	%struct.DSOCacheEntry {
		i64 11327873123841536301, ; hash 0x9d34b096a744f12d, from name: aot-netstandard.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.108, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1051
	%struct.DSOCacheEntry {
		i64 11328478925221472099, ; hash 0x9d36d78fc7532763, from name: libaot-Xamarin.AndroidX.Annotation.Experimental.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1052
	%struct.DSOCacheEntry {
		i64 11329407233932627207, ; hash 0x9d3a23da7e4b8d07, from name: aot-System.IO.Compression.Brotli
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.201, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1053
	%struct.DSOCacheEntry {
		i64 11339684046580168751, ; hash 0x9d5ea68f6593382f, from name: aot-Microsoft.Maui.Controls.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.192, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1054
	%struct.DSOCacheEntry {
		i64 11340910727871153756, ; hash 0x9d630238642d465c, from name: Xamarin.AndroidX.CursorAdapter
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1055
	%struct.DSOCacheEntry {
		i64 11352045248519547303, ; hash 0x9d8a9102002b29a7, from name: aot-Microsoft.Maui.Controls.Compatibility.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.102, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1056
	%struct.DSOCacheEntry {
		i64 11352561739844853276, ; hash 0x9d8c66c102249e1c, from name: libaot-Xamarin.AndroidX.Core.Core.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.193, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1057
	%struct.DSOCacheEntry {
		i64 11369008813813839762, ; hash 0x9dc6d547d3a8b792, from name: aot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1058
	%struct.DSOCacheEntry {
		i64 11385122796719749099, ; hash 0x9e0014dcd6aeb7eb, from name: aot-Xamarin.AndroidX.Legacy.Support.V4.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.226, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1059
	%struct.DSOCacheEntry {
		i64 11391399506422047453, ; hash 0x9e16617f32d8a2dd, from name: System.Globalization.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.290, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1060
	%struct.DSOCacheEntry {
		i64 11413153824783247973, ; hash 0x9e63aaef2518aa65, from name: aot-System.Net.NameResolution.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1061
	%struct.DSOCacheEntry {
		i64 11418345596566047934, ; hash 0x9e761cd2b5f70cbe, from name: System.Runtime.CompilerServices.Unsafe.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.115, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1062
	%struct.DSOCacheEntry {
		i64 11427651043692466812, ; hash 0x9e972c13f469527c, from name: System.Reflection.Primitives.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1063
	%struct.DSOCacheEntry {
		i64 11432101114902388181, ; hash 0x9ea6fb64e61a9dd5, from name: System.AppContext
		i8 1, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.161, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1064
	%struct.DSOCacheEntry {
		i64 11437608939786898104, ; hash 0x9eba8cbb4fd48ab8, from name: aot-Microsoft.Extensions.Options.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.151, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1065
	%struct.DSOCacheEntry {
		i64 11446671985764974897, ; hash 0x9edabf8623efc131, from name: Mono.Android.Export
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.257, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1066
	%struct.DSOCacheEntry {
		i64 11448276831755070604, ; hash 0x9ee0731f77186c8c, from name: System.Diagnostics.TextWriterTraceListener
		i8 0, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.274, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1067
	%struct.DSOCacheEntry {
		i64 11454522132406759586, ; hash 0x9ef6a330d5f470a2, from name: aot-SkiaSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.191, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1068
	%struct.DSOCacheEntry {
		i64 11459687736992758643, ; hash 0x9f08fd47e05a7b73, from name: libaot-System.Diagnostics.DiagnosticSource
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.157, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1069
	%struct.DSOCacheEntry {
		i64 11465353776621081442, ; hash 0x9f1d1e8387aed362, from name: aot-System.Collections.Concurrent
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.155, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1070
	%struct.DSOCacheEntry {
		i64 11465884270599163874, ; hash 0x9f1f00fec8cd4fe2, from name: libaot-System.ValueTuple.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.142, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1071
	%struct.DSOCacheEntry {
		i64 11468049509916024921, ; hash 0x9f26b244d9232059, from name: System.Diagnostics.StackTrace.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.241, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1072
	%struct.DSOCacheEntry {
		i64 11468225467767098760, ; hash 0x9f27524d3a588d88, from name: libaot-Xamarin.AndroidX.ConstraintLayout
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.250, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1073
	%struct.DSOCacheEntry {
		i64 11485890710487134646, ; hash 0x9f6614bf0f8b71b6, from name: System.Runtime.InteropServices
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.236, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1074
	%struct.DSOCacheEntry {
		i64 11495032816624096970, ; hash 0x9f868f71845656ca, from name: aot-System.Collections.Specialized
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.186, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1075
	%struct.DSOCacheEntry {
		i64 11498776041443918706, ; hash 0x9f93dbe2f6098372, from name: libaot-System.Threading.Overlapped.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.96, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1076
	%struct.DSOCacheEntry {
		i64 11501523568478995397, ; hash 0x9f9d9ebf72f943c5, from name: libaot-System.Xml.ReaderWriter.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.208, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1077
	%struct.DSOCacheEntry {
		i64 11502082660092107344, ; hash 0x9f9f9b3d1bf85a50, from name: Xamarin.GooglePlayServices.Location.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1078
	%struct.DSOCacheEntry {
		i64 11509093151757905489, ; hash 0x9fb8833e65692e51, from name: libaot-System.Xml.XPath.XDocument
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.258, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1079
	%struct.DSOCacheEntry {
		i64 11521729796983092563, ; hash 0x9fe56834a335f553, from name: libmonodroid
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.278, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1080
	%struct.DSOCacheEntry {
		i64 11530571088791430846, ; hash 0xa004d1504ccd66be, from name: Microsoft.Extensions.Logging
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.289, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1081
	%struct.DSOCacheEntry {
		i64 11530669335547299986, ; hash 0xa0052aab27c94892, from name: System.Diagnostics.TraceSource.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.107, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1082
	%struct.DSOCacheEntry {
		i64 11531048335771130113, ; hash 0xa006835e057f5901, from name: System.Linq.Queryable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.268, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1083
	%struct.DSOCacheEntry {
		i64 11532129836507303693, ; hash 0xa00a5afc88b38f0d, from name: libaot-Xamarin.AndroidX.Window.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.245, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1084
	%struct.DSOCacheEntry {
		i64 11543093801659331803, ; hash 0xa0314ea798eaf4db, from name: aot-System.Memory
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.163, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1085
	%struct.DSOCacheEntry {
		i64 11550970115839711424, ; hash 0xa04d4a1ee5c758c0, from name: libaot-System.Diagnostics.Contracts.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1086
	%struct.DSOCacheEntry {
		i64 11557754129944451209, ; hash 0xa065642544a49889, from name: System.Core.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1087
	%struct.DSOCacheEntry {
		i64 11575835489729696913, ; hash 0xa0a5a10be7b2d491, from name: System.IO.FileSystem.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.231, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1088
	%struct.DSOCacheEntry {
		i64 11578238080964724296, ; hash 0xa0ae2a30c4cd8648, from name: Xamarin.AndroidX.Legacy.Support.V4
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.226, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1089
	%struct.DSOCacheEntry {
		i64 11580057168383206117, ; hash 0xa0b4a0a4103262e5, from name: Xamarin.AndroidX.Annotation
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.91, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1090
	%struct.DSOCacheEntry {
		i64 11581332126085780304, ; hash 0xa0b9283549299350, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.267, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1091
	%struct.DSOCacheEntry {
		i64 11597940890313164233, ; hash 0xa0f429ca8d1805c9, from name: netstandard
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.108, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1092
	%struct.DSOCacheEntry {
		i64 11617856353302413837, ; hash 0xa13aeacc9e1b020d, from name: aot-System.IO.Pipes.AccessControl
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.146, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1093
	%struct.DSOCacheEntry {
		i64 11622665325505776179, ; hash 0xa14c0088b6058a33, from name: libaot-System.Runtime.InteropServices
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.236, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1094
	%struct.DSOCacheEntry {
		i64 11637972874768420528, ; hash 0xa18262ab42340eb0, from name: aot-System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.157, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1095
	%struct.DSOCacheEntry {
		i64 11661187929174585741, ; hash 0xa1d4dca35186318d, from name: aot-WindowsBase
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1096
	%struct.DSOCacheEntry {
		i64 11663250515068520709, ; hash 0xa1dc308c850d0905, from name: aot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.240, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1097
	%struct.DSOCacheEntry {
		i64 11672361001936329215, ; hash 0xa1fc8e7d0a8999ff, from name: Xamarin.AndroidX.Interpolator
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.242, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1098
	%struct.DSOCacheEntry {
		i64 11736966979867372210, ; hash 0xa2e21548777beab2, from name: Xamarin.AndroidX.Lifecycle.LiveData.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.127, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1099
	%struct.DSOCacheEntry {
		i64 11743665907891708234, ; hash 0xa2f9e1ec30c0214a, from name: System.Threading.Tasks
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1100
	%struct.DSOCacheEntry {
		i64 11747011251535266582, ; hash 0xa305c47eb446c316, from name: aot-System.Globalization
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.290, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1101
	%struct.DSOCacheEntry {
		i64 11764213056097819061, ; hash 0xa342e171eeb919b5, from name: libaot-System.Collections.Specialized.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.186, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1102
	%struct.DSOCacheEntry {
		i64 11775896168281936811, ; hash 0xa36c632c765413ab, from name: aot-System.Private.CoreLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.211, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1103
	%struct.DSOCacheEntry {
		i64 11782443198922974530, ; hash 0xa383a5a9d2056542, from name: aot-System.Collections.NonGeneric
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.125, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1104
	%struct.DSOCacheEntry {
		i64 11799183892646765925, ; hash 0xa3bf1f3c50b8a565, from name: aot-System.Net.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1105
	%struct.DSOCacheEntry {
		i64 11822727113666714038, ; hash 0xa412c3ab9e7bd9b6, from name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.128, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1106
	%struct.DSOCacheEntry {
		i64 11846332969256999943, ; hash 0xa466a1122b8fdc07, from name: aot-System.Numerics
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.203, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1107
	%struct.DSOCacheEntry {
		i64 11848514669829470329, ; hash 0xa46e6150eb30b879, from name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.286, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1108
	%struct.DSOCacheEntry {
		i64 11853780460143320299, ; hash 0xa4811686444f1ceb, from name: libaot-Xamarin.AndroidX.VectorDrawable
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.124, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1109
	%struct.DSOCacheEntry {
		i64 11860757081410384235, ; hash 0xa499dfb97caa316b, from name: Xamarin.AndroidX.DocumentFile.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.214, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1110
	%struct.DSOCacheEntry {
		i64 11878431249347270648, ; hash 0xa4d8aa49623e57f8, from name: libaot-System.Text.Encoding.Extensions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1111
	%struct.DSOCacheEntry {
		i64 11883219293542498704, ; hash 0xa4e9acfccbab4190, from name: aot-System.Linq.Parallel
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1112
	%struct.DSOCacheEntry {
		i64 11893775249788029689, ; hash 0xa50f2d92e1f2caf9, from name: aot-Xamarin.AndroidX.Transition
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1113
	%struct.DSOCacheEntry {
		i64 11896613629761995876, ; hash 0xa5194310b808c464, from name: System.Runtime.Loader.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.246, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1114
	%struct.DSOCacheEntry {
		i64 11905546682503808667, ; hash 0xa538ffa12378469b, from name: aot-System.Xml.Linq.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.194, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1115
	%struct.DSOCacheEntry {
		i64 11905917182671102100, ; hash 0xa53a5098ee54a094, from name: libaot-System.Threading.Overlapped
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.96, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1116
	%struct.DSOCacheEntry {
		i64 11909085194873014816, ; hash 0xa54591e340450a20, from name: System.Data.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1117
	%struct.DSOCacheEntry {
		i64 11925868684967371445, ; hash 0xa58132620d6f62b5, from name: aot-System.Net.Sockets.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.200, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1118
	%struct.DSOCacheEntry {
		i64 11939416560205642949, ; hash 0xa5b1541a90793cc5, from name: Camera.MAUI
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.182, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1119
	%struct.DSOCacheEntry {
		i64 11946511331825732781, ; hash 0xa5ca88c2cea6ccad, from name: libaot-Xamarin.AndroidX.Navigation.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.173, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1120
	%struct.DSOCacheEntry {
		i64 11949219802464515130, ; hash 0xa5d42819c4f5f43a, from name: aot-System
		i8 1, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.185, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1121
	%struct.DSOCacheEntry {
		i64 11969475809364371543, ; hash 0xa61c1ed4e4cb6857, from name: libaot-System.Resources.Reader
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.237, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1122
	%struct.DSOCacheEntry {
		i64 11991047634523762324, ; hash 0xa668c24ad493ae94, from name: System.Net
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.207, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1123
	%struct.DSOCacheEntry {
		i64 12007162008743431559, ; hash 0xa6a2023af3b7cd87, from name: libaot-System.Globalization.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.290, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1124
	%struct.DSOCacheEntry {
		i64 12010728811987111536, ; hash 0xa6aeae380c0a8e70, from name: libaot-Xamarin.KotlinX.Coroutines.Android.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.218, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1125
	%struct.DSOCacheEntry {
		i64 12016490382152452913, ; hash 0xa6c3265623184b31, from name: aot-System.Diagnostics.Tracing.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.220, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1126
	%struct.DSOCacheEntry {
		i64 12024697411268499440, ; hash 0xa6e04e960237d7f0, from name: aot-System.Dynamic.Runtime.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.293, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1127
	%struct.DSOCacheEntry {
		i64 12025475895945156578, ; hash 0xa6e3129d18d557e2, from name: Xamarin.AndroidX.Loader.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.228, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1128
	%struct.DSOCacheEntry {
		i64 12040886584167504988, ; hash 0xa719d28d8e121c5c, from name: System.Net.ServicePoint
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.183, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1129
	%struct.DSOCacheEntry {
		i64 12043215804322375437, ; hash 0xa72218f76201670d, from name: aot-Xamarin.AndroidX.LocalBroadcastManager
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.235, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1130
	%struct.DSOCacheEntry {
		i64 12050631976567110376, ; hash 0xa73c71ef8a3efae8, from name: aot-System.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.276, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1131
	%struct.DSOCacheEntry {
		i64 12051765732457062039, ; hash 0xa7407914a7541e97, from name: aot-System.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.276, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1132
	%struct.DSOCacheEntry {
		i64 12052751833701477691, ; hash 0xa743f9ef3db6ed3b, from name: System.Net.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1133
	%struct.DSOCacheEntry {
		i64 12063623837170009990, ; hash 0xa76a99f6ce740786, from name: System.Security
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1134
	%struct.DSOCacheEntry {
		i64 12066470145659385879, ; hash 0xa774b6aaa4e23817, from name: libaot-Xamarin.AndroidX.Concurrent.Futures
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.234, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1135
	%struct.DSOCacheEntry {
		i64 12080279749007161749, ; hash 0xa7a5c66d7aeab995, from name: libaot-Xamarin.Kotlin.StdLib.Jdk7
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.95, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1136
	%struct.DSOCacheEntry {
		i64 12096697103934194533, ; hash 0xa7e019eccb7e8365, from name: System.Diagnostics.Contracts
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1137
	%struct.DSOCacheEntry {
		i64 12102847907131387746, ; hash 0xa7f5f40c43256f62, from name: System.Buffers
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1138
	%struct.DSOCacheEntry {
		i64 12118598155788291684, ; hash 0xa82de8d0cb770e64, from name: aot-System.IO.Pipes
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.227, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1139
	%struct.DSOCacheEntry {
		i64 12137774235383566651, ; hash 0xa872095bbfed113b, from name: Xamarin.AndroidX.VectorDrawable
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.124, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1140
	%struct.DSOCacheEntry {
		i64 12145679461940342714, ; hash 0xa88e1f1ebcb62fba, from name: System.Text.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.282, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1141
	%struct.DSOCacheEntry {
		i64 12173441707462773849, ; hash 0xa8f0c0bc3b3e4c59, from name: aot-System.Xml.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.150, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1142
	%struct.DSOCacheEntry {
		i64 12180156025829344412, ; hash 0xa9089b5f4c64449c, from name: aot-Xamarin.AndroidX.Concurrent.Futures
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.234, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1143
	%struct.DSOCacheEntry {
		i64 12180814867789829289, ; hash 0xa90af295e568d4a9, from name: Xamarin.AndroidX.Lifecycle.Runtime.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.266, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1144
	%struct.DSOCacheEntry {
		i64 12187578714954394028, ; hash 0xa922fa44c8f7e9ac, from name: System.Xml.XmlSerializer.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.195, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1145
	%struct.DSOCacheEntry {
		i64 12192045520349597797, ; hash 0xa932d8cdf5d49065, from name: libaot-Xamarin.AndroidX.SavedState.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.132, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1146
	%struct.DSOCacheEntry {
		i64 12196119803066310016, ; hash 0xa9415257d3dfdd80, from name: Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.261, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1147
	%struct.DSOCacheEntry {
		i64 12207700497574932172, ; hash 0xa96a76ec62502ecc, from name: libaot-Xamarin.AndroidX.LocalBroadcastManager
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.235, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1148
	%struct.DSOCacheEntry {
		i64 12250548103292341206, ; hash 0xaa02b09800934bd6, from name: Xamarin.AndroidX.ExifInterface.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.252, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1149
	%struct.DSOCacheEntry {
		i64 12256167329605373774, ; hash 0xaa16a74014e04f4e, from name: aot-System.IO.FileSystem.Primitives.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.225, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1150
	%struct.DSOCacheEntry {
		i64 12264906651085816385, ; hash 0xaa35b39ded4bc241, from name: Xamarin.AndroidX.Core.Core.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.193, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1151
	%struct.DSOCacheEntry {
		i64 12270192781745332849, ; hash 0xaa487b53217e2271, from name: libaot-Xamarin.GooglePlayServices.Basement.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.199, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1152
	%struct.DSOCacheEntry {
		i64 12273329533996186173, ; hash 0xaa53a02f2d273a3d, from name: libaot-System.Reflection.Extensions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1153
	%struct.DSOCacheEntry {
		i64 12278824155482493573, ; hash 0xaa6725836f051285, from name: libaot-System.Threading.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.168, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1154
	%struct.DSOCacheEntry {
		i64 12278928371408744993, ; hash 0xaa67844c1848b221, from name: System.Runtime.InteropServices.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.236, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1155
	%struct.DSOCacheEntry {
		i64 12290938384773503399, ; hash 0xaa922f573ca359a7, from name: aot-Microsoft.Maui.Graphics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1156
	%struct.DSOCacheEntry {
		i64 12299321273609848463, ; hash 0xaaaff788a3eb868f, from name: libaot-System.Xml.Linq
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.194, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1157
	%struct.DSOCacheEntry {
		i64 12305572001815437791, ; hash 0xaac62c89b633a1df, from name: libaot-Xamarin.Android.Glide
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.269, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1158
	%struct.DSOCacheEntry {
		i64 12310568865254508663, ; hash 0xaad7ed28a47a8877, from name: aot-Xamarin.AndroidX.Media
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.247, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1159
	%struct.DSOCacheEntry {
		i64 12315876021774320129, ; hash 0xaaeac7fd4f9c0201, from name: Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.130, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1160
	%struct.DSOCacheEntry {
		i64 12319133490348723861, ; hash 0xaaf65aa3d0da8e95, from name: libaot-System.Drawing.Primitives
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.134, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1161
	%struct.DSOCacheEntry {
		i64 12332222936682028543, ; hash 0xab24db6c07db5dff, from name: System.Runtime.Handles
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1162
	%struct.DSOCacheEntry {
		i64 12343428525365727799, ; hash 0xab4caad874d91237, from name: aot-System.Xml.Serialization.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.216, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1163
	%struct.DSOCacheEntry {
		i64 12350535155274665240, ; hash 0xab65ea49ac1ecd18, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1164
	%struct.DSOCacheEntry {
		i64 12361725300599080333, ; hash 0xab8dabaa692ac58d, from name: aot-System.Threading.Tasks.Parallel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1165
	%struct.DSOCacheEntry {
		i64 12362194327210625228, ; hash 0xab8f563e2dbd08cc, from name: aot-System.Formats.Tar
		i8 1, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.264, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1166
	%struct.DSOCacheEntry {
		i64 12362395135250488461, ; hash 0xab900ce0719f5c8d, from name: aot-System.Drawing
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.232, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1167
	%struct.DSOCacheEntry {
		i64 12363533800711166636, ; hash 0xab94187ca7ec9aac, from name: libaot-System.Transactions.Local.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1168
	%struct.DSOCacheEntry {
		i64 12378770766169852216, ; hash 0xabca3a6d218b4938, from name: aot-Xamarin.KotlinX.Coroutines.Android.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.218, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1169
	%struct.DSOCacheEntry {
		i64 12393388512262732313, ; hash 0xabfe29305cd3ba19, from name: aot-Microsoft.Extensions.Caching.Memory
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.119, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1170
	%struct.DSOCacheEntry {
		i64 12405317157449198374, ; hash 0xac288a3a7fd16b26, from name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1171
	%struct.DSOCacheEntry {
		i64 12435251182579033392, ; hash 0xac92e310d6612530, from name: libaot-System.Text.Encoding.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.275, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1172
	%struct.DSOCacheEntry {
		i64 12439793764729580087, ; hash 0xaca3068529d36a37, from name: libaot-System.ComponentModel.Primitives.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.104, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1173
	%struct.DSOCacheEntry {
		i64 12450626906808540265, ; hash 0xacc983349b3e5c69, from name: libaot-System.Net.ServicePoint.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.183, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1174
	%struct.DSOCacheEntry {
		i64 12453234617382276517, ; hash 0xacd2c6e789ab0da5, from name: libaot-System.Reflection.Primitives
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1175
	%struct.DSOCacheEntry {
		i64 12456599198595667770, ; hash 0xacdebaf925b5d73a, from name: System.Resources.ResourceManager.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.153, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1176
	%struct.DSOCacheEntry {
		i64 12464464677852995538, ; hash 0xacfaac95bed4dfd2, from name: libaot-Xamarin.Kotlin.StdLib.Jdk8.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.97, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1177
	%struct.DSOCacheEntry {
		i64 12466529513160295733, ; hash 0xad02028aadd7c535, from name: libaot-System.IO.Pipes.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.227, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1178
	%struct.DSOCacheEntry {
		i64 12479103209920401597, ; hash 0xad2eae4096be10bd, from name: libaot-System.Net.NameResolution.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1179
	%struct.DSOCacheEntry {
		i64 12531980697337323275, ; hash 0xadea8a0c04d7df0b, from name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.116, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1180
	%struct.DSOCacheEntry {
		i64 12543648076616421447, ; hash 0xae13fd77723bd047, from name: aot-System.IO.IsolatedStorage.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.292, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1181
	%struct.DSOCacheEntry {
		i64 12550732019250633519, ; hash 0xae2d28465e8e1b2f, from name: System.IO.Compression
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1182
	%struct.DSOCacheEntry {
		i64 12590519508742077906, ; hash 0xaeba82c928327dd2, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.267, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1183
	%struct.DSOCacheEntry {
		i64 12607454609792316882, ; hash 0xaef6ad2ba28835d2, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.127, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1184
	%struct.DSOCacheEntry {
		i64 12645019786013722111, ; hash 0xaf7c227fcb2245ff, from name: libaot-Xamarin.AndroidX.ExifInterface.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.252, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1185
	%struct.DSOCacheEntry {
		i64 12648537676456605650, ; hash 0xaf88a2007d5737d2, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		i8 1, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.267, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1186
	%struct.DSOCacheEntry {
		i64 12664561597175764147, ; hash 0xafc18fac43b714b3, from name: System.Security.AccessControl.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.184, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1187
	%struct.DSOCacheEntry {
		i64 12674035147592014371, ; hash 0xafe337d11b099a23, from name: aot-Microsoft.Extensions.Logging.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.289, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1188
	%struct.DSOCacheEntry {
		i64 12674984561979589840, ; hash 0xafe6974dde5a84d0, from name: Xamarin.AndroidX.Activity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.238, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1189
	%struct.DSOCacheEntry {
		i64 12685934069698623289, ; hash 0xb00d7dd2cc697739, from name: aot-Microsoft.Win32.Primitives.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.98, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1190
	%struct.DSOCacheEntry {
		i64 12697791992431014197, ; hash 0xb0379e8a94a67135, from name: Xamarin.Google.Guava.ListenableFuture.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.149, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1191
	%struct.DSOCacheEntry {
		i64 12699438905320632645, ; hash 0xb03d78665e697145, from name: libaot-Xamarin.Kotlin.StdLib.Common
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.243, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1192
	%struct.DSOCacheEntry {
		i64 12700543734426720211, ; hash 0xb041653c70d157d3, from name: Xamarin.AndroidX.Collection
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.105, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1193
	%struct.DSOCacheEntry {
		i64 12708238894395270091, ; hash 0xb05cbbf17d3ba3cb, from name: System.IO
		i8 1, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1194
	%struct.DSOCacheEntry {
		i64 12708922737231849740, ; hash 0xb05f29e50e96e90c, from name: System.Text.Encoding.Extensions
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1195
	%struct.DSOCacheEntry {
		i64 12727750515385895548, ; hash 0xb0a20da8c35f0a7c, from name: libaot-Microsoft.Extensions.DependencyInjection
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.160, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1196
	%struct.DSOCacheEntry {
		i64 12728648947223343692, ; hash 0xb0a53ec739e5b24c, from name: libaot-Microsoft.Win32.Registry
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.233, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1197
	%struct.DSOCacheEntry {
		i64 12729020963417599777, ; hash 0xb0a6911fff01af21, from name: aot-System.Net.Quic.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.143, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1198
	%struct.DSOCacheEntry {
		i64 12733205053097217818, ; hash 0xb0b56e884a118f1a, from name: Xamarin.AndroidX.Fragment.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1199
	%struct.DSOCacheEntry {
		i64 12739747815404616738, ; hash 0xb0ccad23d9403c22, from name: libaot-Xamarin.AndroidX.Security.SecurityCrypto
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.139, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1200
	%struct.DSOCacheEntry {
		i64 12748027147418257300, ; hash 0xb0ea17260ce6c794, from name: libaot-Xamarin.AndroidX.ResourceInspection.Annotation.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.118, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1201
	%struct.DSOCacheEntry {
		i64 12753841065332862057, ; hash 0xb0febee04cf46c69, from name: Xamarin.AndroidX.Window
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.245, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1202
	%struct.DSOCacheEntry {
		i64 12777305264992360515, ; hash 0xb1521b7102991843, from name: aot-Xamarin.KotlinX.Coroutines.Android
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.218, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1203
	%struct.DSOCacheEntry {
		i64 12813717246272072325, ; hash 0xb1d377f20c57ea85, from name: libaot-Xamarin.AndroidX.Emoji2.ViewsHelper
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.148, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1204
	%struct.DSOCacheEntry {
		i64 12823155812822698683, ; hash 0xb1f5004592c84abb, from name: System.Reflection.DispatchProxy.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.109, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1205
	%struct.DSOCacheEntry {
		i64 12835242264250840079, ; hash 0xb21ff0d5d6c0740f, from name: System.IO.Pipes
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.227, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1206
	%struct.DSOCacheEntry {
		i64 12836465462950848827, ; hash 0xb2244953fac1693b, from name: Xamarin.AndroidX.Legacy.Support.V4.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.226, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1207
	%struct.DSOCacheEntry {
		i64 12842431879475601171, ; hash 0xb2397bc0944b9f13, from name: System.Security.Claims.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.111, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1208
	%struct.DSOCacheEntry {
		i64 12843321153144804894, ; hash 0xb23ca48abd74d61e, from name: Microsoft.Extensions.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1209
	%struct.DSOCacheEntry {
		i64 12857960540543662497, ; hash 0xb270a6fcbb1839a1, from name: aot-System.Transactions.Local
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1210
	%struct.DSOCacheEntry {
		i64 12868190565700119421, ; hash 0xb294ff241296ab7d, from name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.166, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1211
	%struct.DSOCacheEntry {
		i64 12872620911514443596, ; hash 0xb2a4bc8457155f4c, from name: aot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.164, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1212
	%struct.DSOCacheEntry {
		i64 12875951528938057945, ; hash 0xb2b091b2238030d9, from name: Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1213
	%struct.DSOCacheEntry {
		i64 12895691319166646681, ; hash 0xb2f6b2ee34043999, from name: aot-System.Runtime.Serialization.Primitives
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.172, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1214
	%struct.DSOCacheEntry {
		i64 12903149379311849700, ; hash 0xb31131ff25af50e4, from name: libaot-SkiaSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.191, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1215
	%struct.DSOCacheEntry {
		i64 12909532736614132430, ; hash 0xb327dfa056296ace, from name: libaot-System.Net.Ping
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.94, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1216
	%struct.DSOCacheEntry {
		i64 12937319369933575792, ; hash 0xb38a976c0eabd670, from name: aot-Xamarin.Google.Android.Material.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1217
	%struct.DSOCacheEntry {
		i64 12941098956319990056, ; hash 0xb39804ef96a1a128, from name: Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.279, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1218
	%struct.DSOCacheEntry {
		i64 12948324930727507907, ; hash 0xb3b1b0ebdc58f7c3, from name: libaot-Xamarin.AndroidX.AsyncLayoutInflater.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1219
	%struct.DSOCacheEntry {
		i64 12964673882120879242, ; hash 0xb3ebc634bc997c8a, from name: libaot-System.Runtime.Serialization.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.212, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1220
	%struct.DSOCacheEntry {
		i64 12975930668465563552, ; hash 0xb413c4318bfca7a0, from name: libaot-System.Diagnostics.Tools
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.215, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1221
	%struct.DSOCacheEntry {
		i64 12996638905122625135, ; hash 0xb45d56399ddb166f, from name: System.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.185, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1222
	%struct.DSOCacheEntry {
		i64 13006425725023322809, ; hash 0xb4801b49318482b9, from name: libaot-Xamarin.AndroidX.DrawerLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1223
	%struct.DSOCacheEntry {
		i64 13006447531111757675, ; hash 0xb4802f1e51ac376b, from name: aot-System.Security.Cryptography.Cng.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.244, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1224
	%struct.DSOCacheEntry {
		i64 13017125083246937125, ; hash 0xb4a61e4ba7c2c425, from name: libaot-System.Diagnostics.FileVersionInfo
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1225
	%struct.DSOCacheEntry {
		i64 13039722614324072723, ; hash 0xb4f666a15c6a1113, from name: aot-System.Diagnostics.Tracing
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.220, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1226
	%struct.DSOCacheEntry {
		i64 13057408680142590095, ; hash 0xb5353c037300508f, from name: libaot-System.Reflection.Extensions
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1227
	%struct.DSOCacheEntry {
		i64 13067966148190955579, ; hash 0xb55abdf987c0683b, from name: Xamarin.AndroidX.Browser.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.154, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1228
	%struct.DSOCacheEntry {
		i64 13068061340980117689, ; hash 0xb55b148d542280b9, from name: libaot-System.Security.Cryptography.Encoding
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.188, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1229
	%struct.DSOCacheEntry {
		i64 13073566528136159500, ; hash 0xb56ea37d98fe210c, from name: aot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.279, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1230
	%struct.DSOCacheEntry {
		i64 13087390844131920673, ; hash 0xb59fc0a1fd2ecb21, from name: aot-Microsoft.Extensions.Logging.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.291, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1231
	%struct.DSOCacheEntry {
		i64 13089692111129741609, ; hash 0xb5a7ed9f771f0929, from name: aot-System.Reflection.TypeExtensions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.99, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1232
	%struct.DSOCacheEntry {
		i64 13101809809254258831, ; hash 0xb5d2fa9aeb54188f, from name: aot-Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1233
	%struct.DSOCacheEntry {
		i64 13112580004984807512, ; hash 0xb5f93e0a86026058, from name: aot-Xamarin.AndroidX.Emoji2.ViewsHelper
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.148, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1234
	%struct.DSOCacheEntry {
		i64 13114936752209646297, ; hash 0xb6019d7d7f2bd2d9, from name: Xamarin.Google.Android.Material.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1235
	%struct.DSOCacheEntry {
		i64 13116315589229894972, ; hash 0xb606838901f75d3c, from name: aot-System.Net.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1236
	%struct.DSOCacheEntry {
		i64 13122712522937545033, ; hash 0xb61d3d8333433149, from name: aot-System.Xml.XPath.XDocument
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.258, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1237
	%struct.DSOCacheEntry {
		i64 13132987453041329016, ; hash 0xb641be81ca30c378, from name: libaot-Xamarin.Android.Glide.DiskLruCache.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.249, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1238
	%struct.DSOCacheEntry {
		i64 13161955518152598171, ; hash 0xb6a8a8cf08fa629b, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		i8 1, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.267, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1239
	%struct.DSOCacheEntry {
		i64 13166780507886895166, ; hash 0xb6b9cd1c8022c03e, from name: libaot-System.Text.Encoding
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.275, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1240
	%struct.DSOCacheEntry {
		i64 13176379337280690545, ; hash 0xb6dbe73220699971, from name: aot-System.Net.Http.Formatting
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1241
	%struct.DSOCacheEntry {
		i64 13195302935526416900, ; hash 0xb71f221bafb8a204, from name: System.Threading.Overlapped.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.96, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1242
	%struct.DSOCacheEntry {
		i64 13195302980748307708, ; hash 0xb71f22263727ecfc, from name: Xamarin.AndroidX.Navigation.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1243
	%struct.DSOCacheEntry {
		i64 13205680769184534978, ; hash 0xb74400b1607391c2, from name: libaot-System.Runtime.Serialization.Json
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1244
	%struct.DSOCacheEntry {
		i64 13218213817707774047, ; hash 0xb770876f21a1c05f, from name: libaot-Xamarin.AndroidX.Tracing.Tracing
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.273, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1245
	%struct.DSOCacheEntry {
		i64 13218945160029580850, ; hash 0xb773209608eeae32, from name: aot-System.Globalization.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.290, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1246
	%struct.DSOCacheEntry {
		i64 13222957746497227746, ; hash 0xb78162031ff78be2, from name: libaot-Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.288, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1247
	%struct.DSOCacheEntry {
		i64 13242020313873645299, ; hash 0xb7c51b50f4f1fef3, from name: libaot-Xamarin.AndroidX.Annotation.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.91, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1248
	%struct.DSOCacheEntry {
		i64 13259403323775206793, ; hash 0xb802dd1257414589, from name: aot-Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.152, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1249
	%struct.DSOCacheEntry {
		i64 13285640494417243250, ; hash 0xb86013a3ab48ec72, from name: libaot-Microsoft.Maui.Controls.Xaml
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.141, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1250
	%struct.DSOCacheEntry {
		i64 13314286428381311703, ; hash 0xb8c5d8f6e978f2d7, from name: libaot-System.Console
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1251
	%struct.DSOCacheEntry {
		i64 13323148484643576660, ; hash 0xb8e554f52cf6db54, from name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1252
	%struct.DSOCacheEntry {
		i64 13352871532007464144, ; hash 0xb94eede96cbb1cd0, from name: libaot-Xamarin.AndroidX.Activity
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.238, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1253
	%struct.DSOCacheEntry {
		i64 13370592475155966277, ; hash 0xb98de304062ea945, from name: System.Runtime.Serialization
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.212, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1254
	%struct.DSOCacheEntry {
		i64 13384594276806126840, ; hash 0xb9bfa19483c16cf8, from name: aot-Xamarin.AndroidX.ViewPager.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.114, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1255
	%struct.DSOCacheEntry {
		i64 13397226317997147350, ; hash 0xb9ec825acbbc04d6, from name: libaot-Xamarin.AndroidX.Legacy.Support.Core.Utils
		i8 1, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.263, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1256
	%struct.DSOCacheEntry {
		i64 13404347523447273790, ; hash 0xba05cf0da4f6393e, from name: Xamarin.AndroidX.ConstraintLayout.Core
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1257
	%struct.DSOCacheEntry {
		i64 13431476299110033919, ; hash 0xba663087f18829ff, from name: System.Net.WebClient
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1258
	%struct.DSOCacheEntry {
		i64 13454009404024712428, ; hash 0xbab63e4543a86cec, from name: Xamarin.Google.Guava.ListenableFuture
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.149, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1259
	%struct.DSOCacheEntry {
		i64 13457441275277163652, ; hash 0xbac26f8a0e933c84, from name: Xamarin.Android.Glide.DiskLruCache.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.249, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1260
	%struct.DSOCacheEntry {
		i64 13465488254036897740, ; hash 0xbadf06394d106fcc, from name: Xamarin.Kotlin.StdLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.103, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1261
	%struct.DSOCacheEntry {
		i64 13483581387200759472, ; hash 0xbb1f4dd5242b86b0, from name: aot-Microsoft.Maui.Controls.Xaml
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.141, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1262
	%struct.DSOCacheEntry {
		i64 13488491921086969402, ; hash 0xbb30bfefe81d763a, from name: aot-System.ComponentModel
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1263
	%struct.DSOCacheEntry {
		i64 13542878105395129208, ; hash 0xbbf1f7e2347deb78, from name: libaot-System.Security.Cryptography.OpenSsl.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.284, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1264
	%struct.DSOCacheEntry {
		i64 13543484874654180244, ; hash 0xbbf41fbcaea36394, from name: aot-System.Xml.XPath.XDocument.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.258, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1265
	%struct.DSOCacheEntry {
		i64 13546874730744599821, ; hash 0xbc002acb0ebf550d, from name: System.Threading.Thread.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1266
	%struct.DSOCacheEntry {
		i64 13578472628727169633, ; hash 0xbc706ce9fba5c261, from name: System.Xml.XPath
		i8 1, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.129, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1267
	%struct.DSOCacheEntry {
		i64 13578724849647908067, ; hash 0xbc71524ebe0874e3, from name: System.Dynamic.Runtime.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.293, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1268
	%struct.DSOCacheEntry {
		i64 13589927487757454067, ; hash 0xbc991f0c2f198af3, from name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1269
	%struct.DSOCacheEntry {
		i64 13590097962178175816, ; hash 0xbc99ba17da63e348, from name: Xamarin.AndroidX.Activity.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.239, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1270
	%struct.DSOCacheEntry {
		i64 13595227417690135694, ; hash 0xbcabf34e48125c8e, from name: System.IO.IsolatedStorage.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.292, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1271
	%struct.DSOCacheEntry {
		i64 13603500654432575449, ; hash 0xbcc957c5513f5fd9, from name: System.Collections.Immutable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.206, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1272
	%struct.DSOCacheEntry {
		i64 13620440420819333808, ; hash 0xbd058666074ef2b0, from name: aot-System.AppContext.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.161, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1273
	%struct.DSOCacheEntry {
		i64 13632781750176942277, ; hash 0xbd315ec5afb988c5, from name: aot-System.Diagnostics.TextWriterTraceListener.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.274, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1274
	%struct.DSOCacheEntry {
		i64 13675589307506966157, ; hash 0xbdc97404d0153e8d, from name: Xamarin.AndroidX.Activity.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.239, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1275
	%struct.DSOCacheEntry {
		i64 13699603031714047885, ; hash 0xbe1ec45fad2e278d, from name: libaot-Xamarin.AndroidX.Loader
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.228, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1276
	%struct.DSOCacheEntry {
		i64 13699925495805398313, ; hash 0xbe1fe9a732cc4d29, from name: aot-Xamarin.Kotlin.StdLib.Common.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.243, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1277
	%struct.DSOCacheEntry {
		i64 13713329104121190199, ; hash 0xbe4f8829f32b5737, from name: System.Dynamic.Runtime
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.293, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1278
	%struct.DSOCacheEntry {
		i64 13717233136797750441, ; hash 0xbe5d66dc640c14a9, from name: aot-System.Text.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.282, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1279
	%struct.DSOCacheEntry {
		i64 13739044888507636575, ; hash 0xbeaae48894a4db5f, from name: libaot-Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1280
	%struct.DSOCacheEntry {
		i64 13757055220050775219, ; hash 0xbeeae0d5aa8f4cb3, from name: libaot-Microsoft.Maui.Controls
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.192, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1281
	%struct.DSOCacheEntry {
		i64 13761955127882175294, ; hash 0xbefc49465c48533e, from name: System.Reflection.Emit.ILGeneration.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.117, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1282
	%struct.DSOCacheEntry {
		i64 13768113933372556022, ; hash 0xbf122aad01c702f6, from name: libaot-System.Security.Cryptography
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1283
	%struct.DSOCacheEntry {
		i64 13768883594457632599, ; hash 0xbf14e6adb159cf57, from name: System.IO.IsolatedStorage
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.292, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1284
	%struct.DSOCacheEntry {
		i64 13771377631253161580, ; hash 0xbf1dc2fde29ae66c, from name: aot-System.Security.Principal.Windows
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1285
	%struct.DSOCacheEntry {
		i64 13775816612427878951, ; hash 0xbf2d8838bab05227, from name: aot-System.Security.Cryptography.OpenSsl
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.284, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1286
	%struct.DSOCacheEntry {
		i64 13780240838949801592, ; hash 0xbf3d40083cef0e78, from name: System.Text.Encoding.Extensions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1287
	%struct.DSOCacheEntry {
		i64 13784476538474629663, ; hash 0xbf4c4c60e27c8a1f, from name: aot-mscorlib.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1288
	%struct.DSOCacheEntry {
		i64 13786269793005612187, ; hash 0xbf52ab557dcc2c9b, from name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.279, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1289
	%struct.DSOCacheEntry {
		i64 13807487031629930123, ; hash 0xbf9e0c4cd11d5e8b, from name: libaot-Xamarin.AndroidX.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.288, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1290
	%struct.DSOCacheEntry {
		i64 13811307204318024253, ; hash 0xbfab9eba152b523d, from name: System.Data.DataSetExtensions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.202, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1291
	%struct.DSOCacheEntry {
		i64 13828521679616088467, ; hash 0xbfe8c733724e1993, from name: Xamarin.Kotlin.StdLib.Common
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.243, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1292
	%struct.DSOCacheEntry {
		i64 13842731643823728203, ; hash 0xc01b43168f2c264b, from name: libaot-System.Xml.Linq.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.194, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1293
	%struct.DSOCacheEntry {
		i64 13858048614769238501, ; hash 0xc051adcac36a21e5, from name: System.Security.Cryptography.OpenSsl.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.284, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1294
	%struct.DSOCacheEntry {
		i64 13876721762243165199, ; hash 0xc09404ebb56fbc0f, from name: System.Diagnostics.Tools.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.215, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1295
	%struct.DSOCacheEntry {
		i64 13885975078585796489, ; hash 0xc0b4e4c34f088789, from name: libaot-System.Threading.ThreadPool.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.222, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1296
	%struct.DSOCacheEntry {
		i64 13888993854737701709, ; hash 0xc0bf9e52e7395b4d, from name: System.Formats.Asn1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.259, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1297
	%struct.DSOCacheEntry {
		i64 13889534505300156347, ; hash 0xc0c18a0aebf25fbb, from name: Microsoft.VisualBasic.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.253, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1298
	%struct.DSOCacheEntry {
		i64 13900452450741477987, ; hash 0xc0e853db2fa76263, from name: Xamarin.AndroidX.ViewPager.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.114, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1299
	%struct.DSOCacheEntry {
		i64 13904753614831582715, ; hash 0xc0f79bbdfd5d7dfb, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.224, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1300
	%struct.DSOCacheEntry {
		i64 13917396180688427187, ; hash 0xc1248616bc4fd8b3, from name: Microsoft.Extensions.Logging.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.289, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1301
	%struct.DSOCacheEntry {
		i64 13918643515869505000, ; hash 0xc128f48896b225e8, from name: aot-Xamarin.AndroidX.CustomView.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.277, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1302
	%struct.DSOCacheEntry {
		i64 13921153932123395153, ; hash 0xc131dfbe6bbf5451, from name: libaot-Xamarin.AndroidX.Annotation
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.91, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1303
	%struct.DSOCacheEntry {
		i64 13924670109541730754, ; hash 0xc13e5db045bc09c2, from name: aot-System.Formats.Tar.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.264, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1304
	%struct.DSOCacheEntry {
		i64 13927427627500361954, ; hash 0xc14829a2f41ed8e2, from name: aot-System.Private.Uri.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.287, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1305
	%struct.DSOCacheEntry {
		i64 13934622921725558032, ; hash 0xc161b9b7f077bd10, from name: aot-Xamarin.AndroidX.RecyclerView
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1306
	%struct.DSOCacheEntry {
		i64 13959074834287824816, ; hash 0xc1b8989a7ad20fb0, from name: Xamarin.AndroidX.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.288, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1307
	%struct.DSOCacheEntry {
		i64 13963056008128377571, ; hash 0xc1c6bd75bf6032e3, from name: aot-Xamarin.Google.Guava.ListenableFuture
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.149, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1308
	%struct.DSOCacheEntry {
		i64 13963744846780922848, ; hash 0xc1c92ff47e917be0, from name: libaot-System.Buffers.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1309
	%struct.DSOCacheEntry {
		i64 13972136905349029688, ; hash 0xc1e7007ce4745f38, from name: libaot-System.Net.Sockets.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.200, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1310
	%struct.DSOCacheEntry {
		i64 13982871072136865432, ; hash 0xc20d2327dacda698, from name: System.IO.UnmanagedMemoryStream.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1311
	%struct.DSOCacheEntry {
		i64 13988737722900018756, ; hash 0xc221fad7ed8ff644, from name: aot-System.ComponentModel.EventBasedAsync
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1312
	%struct.DSOCacheEntry {
		i64 14024723203617446143, ; hash 0xc2a1d37290cbd8ff, from name: libaot-System.ComponentModel.TypeConverter
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.144, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1313
	%struct.DSOCacheEntry {
		i64 14037761671920318323, ; hash 0xc2d025dd88677773, from name: aot-System.Threading
		i8 1, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.168, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1314
	%struct.DSOCacheEntry {
		i64 14044858527140495619, ; hash 0xc2e95c6ae6d34103, from name: aot-System.Runtime.Loader
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.246, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1315
	%struct.DSOCacheEntry {
		i64 14045780012010563026, ; hash 0xc2eca280d12be5d2, from name: Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.148, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1316
	%struct.DSOCacheEntry {
		i64 14058709349301150578, ; hash 0xc31a91aabd8ee372, from name: System.IO.Compression.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1317
	%struct.DSOCacheEntry {
		i64 14059049780117520506, ; hash 0xc31bc7497770407a, from name: aot-System.Security.Cryptography.X509Certificates.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.204, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1318
	%struct.DSOCacheEntry {
		i64 14064151877224080280, ; hash 0xc32de79e0515a398, from name: aot-System.Formats.Asn1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.259, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1319
	%struct.DSOCacheEntry {
		i64 14070677912659721959, ; hash 0xc34517030d047ee7, from name: libaot-System.Diagnostics.Tracing
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.220, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1320
	%struct.DSOCacheEntry {
		i64 14081432890394991643, ; hash 0xc36b4c9b707edc1b, from name: libaot-Xamarin.Android.Glide.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.269, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1321
	%struct.DSOCacheEntry {
		i64 14085224268007237774, ; hash 0xc378c4d85448688e, from name: aot-System.ComponentModel.Annotations
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1322
	%struct.DSOCacheEntry {
		i64 14124974489674258913, ; hash 0xc405fd76067d19e1, from name: Xamarin.AndroidX.CardView
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1323
	%struct.DSOCacheEntry {
		i64 14126261443848111969, ; hash 0xc40a8ff064dd0761, from name: System.Text.Encoding.CodePages.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.254, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1324
	%struct.DSOCacheEntry {
		i64 14135789968212363092, ; hash 0xc42c6a14dad40754, from name: aot-Microsoft.VisualBasic
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.253, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1325
	%struct.DSOCacheEntry {
		i64 14137679297576702812, ; hash 0xc433206aa074135c, from name: aot-System.Core.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1326
	%struct.DSOCacheEntry {
		i64 14143988164198918098, ; hash 0xc4498a4c1a67e7d2, from name: System.Threading.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.168, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1327
	%struct.DSOCacheEntry {
		i64 14146209618615491199, ; hash 0xc4516eb2c3ca5a7f, from name: aot-Xamarin.Android.Glide.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.269, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1328
	%struct.DSOCacheEntry {
		i64 14152660198772281192, ; hash 0xc46859777ea18f68, from name: libaot-System.Collections.Concurrent.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.155, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1329
	%struct.DSOCacheEntry {
		i64 14153042623189675447, ; hash 0xc469b5479e2eedb7, from name: libaot-Xamarin.AndroidX.DocumentFile
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.214, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1330
	%struct.DSOCacheEntry {
		i64 14159110086036678642, ; hash 0xc47f439ae5dde7f2, from name: aot-System.Text.Encoding.Extensions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1331
	%struct.DSOCacheEntry {
		i64 14168095981489225142, ; hash 0xc49f303ab84dfdb6, from name: libaot-System.Net.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.207, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1332
	%struct.DSOCacheEntry {
		i64 14172950589542241164, ; hash 0xc4b06f783cd4138c, from name: System.ComponentModel.DataAnnotations.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1333
	%struct.DSOCacheEntry {
		i64 14174671189317472550, ; hash 0xc4b68c58973b5126, from name: libaot-System.Text.RegularExpressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1334
	%struct.DSOCacheEntry {
		i64 14182888721008485466, ; hash 0xc4d3be25c89ae45a, from name: aot-System.Console
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1335
	%struct.DSOCacheEntry {
		i64 14208955863919878019, ; hash 0xc5305a137225df83, from name: aot-System.Runtime.Serialization.Xml
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.190, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1336
	%struct.DSOCacheEntry {
		i64 14226382999226559092, ; hash 0xc56e43f6938e2a74, from name: System.ServiceProcess
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1337
	%struct.DSOCacheEntry {
		i64 14230396410514008665, ; hash 0xc57c8623b5ae6a59, from name: aot-System.Collections
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.101, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1338
	%struct.DSOCacheEntry {
		i64 14244268896140588737, ; hash 0xc5adcf17779af6c1, from name: aot-System.Net.WebClient.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1339
	%struct.DSOCacheEntry {
		i64 14261073672896646636, ; hash 0xc5e982f274ae0dec, from name: Xamarin.AndroidX.Print
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1340
	%struct.DSOCacheEntry {
		i64 14286901546587342478, ; hash 0xc6454542e951468e, from name: aot-Xamarin.AndroidX.Lifecycle.Process
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.189, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1341
	%struct.DSOCacheEntry {
		i64 14317997431913345095, ; hash 0xc6b3becde8267047, from name: aot-System.Collections.Specialized.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.186, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1342
	%struct.DSOCacheEntry {
		i64 14319327830875434373, ; hash 0xc6b878cb8db1ed85, from name: System.Text.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.282, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1343
	%struct.DSOCacheEntry {
		i64 14327709162229390963, ; hash 0xc6d63f9253cade73, from name: System.Security.Cryptography.X509Certificates
		i8 1, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.204, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1344
	%struct.DSOCacheEntry {
		i64 14327730595565898139, ; hash 0xc6d65310aa33899b, from name: aot-System.Net.WebProxy.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.140, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1345
	%struct.DSOCacheEntry {
		i64 14339080265730885305, ; hash 0xc6fea587acb406b9, from name: libaot-System.Diagnostics.Debug
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.112, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1346
	%struct.DSOCacheEntry {
		i64 14340868866807757429, ; hash 0xc7050040d088fa75, from name: aot-Xamarin.AndroidX.Annotation.Experimental
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1347
	%struct.DSOCacheEntry {
		i64 14343351667264400691, ; hash 0xc70dd258d7cd2d33, from name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.90, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1348
	%struct.DSOCacheEntry {
		i64 14343849879592858025, ; hash 0xc70f9777f0a971a9, from name: System.Xml.Linq.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.194, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1349
	%struct.DSOCacheEntry {
		i64 14351510784141839845, ; hash 0xc72acf0546f64de5, from name: aot-Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1350
	%struct.DSOCacheEntry {
		i64 14357435489182144315, ; hash 0xc73fdb822a49d73b, from name: aot-System.IO.Compression.ZipFile
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.113, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1351
	%struct.DSOCacheEntry {
		i64 14360875924539294536, ; hash 0xc74c1490f19fc348, from name: Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.90, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1352
	%struct.DSOCacheEntry {
		i64 14414435752324237589, ; hash 0xc80a5cf21efa0915, from name: Xamarin.Android.Glide.GifDecoder.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1353
	%struct.DSOCacheEntry {
		i64 14422493441156788021, ; hash 0xc826fd5eff8d2f35, from name: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.152, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1354
	%struct.DSOCacheEntry {
		i64 14424844866220670826, ; hash 0xc82f57facf333f6a, from name: monosgen-2.0.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.283, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1355
	%struct.DSOCacheEntry {
		i64 14429843176364016121, ; hash 0xc84119ea93c581f9, from name: libaot-System.Runtime.CompilerServices.Unsafe
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.115, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1356
	%struct.DSOCacheEntry {
		i64 14457246568746904883, ; hash 0xc8a275281064ed33, from name: aot-zxing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.197, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1357
	%struct.DSOCacheEntry {
		i64 14462803528705013993, ; hash 0xc8b6332ea0ba78e9, from name: aot-System.Threading.Tasks.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1358
	%struct.DSOCacheEntry {
		i64 14486659737292545672, ; hash 0xc90af44707469e88, from name: Xamarin.AndroidX.Lifecycle.LiveData
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.127, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1359
	%struct.DSOCacheEntry {
		i64 14495724990987328804, ; hash 0xc92b2913e18d5d24, from name: Xamarin.AndroidX.ResourceInspection.Annotation
		i8 1, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.118, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1360
	%struct.DSOCacheEntry {
		i64 14506413742245427842, ; hash 0xc9512270b7623a82, from name: Xamarin.AndroidX.Concurrent.Futures.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.234, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1361
	%struct.DSOCacheEntry {
		i64 14519854289845512951, ; hash 0xc980e28c10ac6af7, from name: Xamarin.AndroidX.Emoji2.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1362
	%struct.DSOCacheEntry {
		i64 14531858928011108053, ; hash 0xc9ab88b3b230ded5, from name: aot-System.Dynamic.Runtime
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.293, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1363
	%struct.DSOCacheEntry {
		i64 14547304744410597547, ; hash 0xc9e2689711f2c8ab, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.265, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1364
	%struct.DSOCacheEntry {
		i64 14562678984415238708, ; hash 0xca190761441dda34, from name: aot-Xamarin.AndroidX.SwipeRefreshLayout
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.170, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1365
	%struct.DSOCacheEntry {
		i64 14567291835347755386, ; hash 0xca296abe5159e17a, from name: aot-System.IO.Compression.ZipFile.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.113, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1366
	%struct.DSOCacheEntry {
		i64 14574160591280636898, ; hash 0xca41d1d72ec783e2, from name: System.Net.Quic
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.143, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1367
	%struct.DSOCacheEntry {
		i64 14587487794768888622, ; hash 0xca712adc8c8bc32e, from name: Microsoft.Extensions.Caching.Memory.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.119, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1368
	%struct.DSOCacheEntry {
		i64 14588929277170587884, ; hash 0xca7649e1d30c98ec, from name: aot-System.Net.WebSockets.Client
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1369
	%struct.DSOCacheEntry {
		i64 14604015534980822382, ; hash 0xcaabe2c0f0d1756e, from name: aot-System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.281, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1370
	%struct.DSOCacheEntry {
		i64 14606933860027739344, ; hash 0xcab640f470942cd0, from name: libaot-Xamarin.AndroidX.Transition.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1371
	%struct.DSOCacheEntry {
		i64 14611435504614518872, ; hash 0xcac63f2d3f143058, from name: System.Net.NetworkInformation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.176, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1372
	%struct.DSOCacheEntry {
		i64 14622043554576106986, ; hash 0xcaebef2458cc85ea, from name: System.Runtime.Serialization.Formatters
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.187, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1373
	%struct.DSOCacheEntry {
		i64 14638676721339700578, ; hash 0xcb2706eb453b9562, from name: System.IO.MemoryMappedFiles.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.110, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1374
	%struct.DSOCacheEntry {
		i64 14639600873480520919, ; hash 0xcb2a4f6e354e04d7, from name: aot-System.Threading.Timer.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.271, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1375
	%struct.DSOCacheEntry {
		i64 14675193927833541988, ; hash 0xcba8c31ff67cdd64, from name: libaot-Xamarin.AndroidX.ConstraintLayout.Core
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1376
	%struct.DSOCacheEntry {
		i64 14690985099581930927, ; hash 0xcbe0dd1ca5233daf, from name: System.Web.HttpUtility
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1377
	%struct.DSOCacheEntry {
		i64 14708724850922793423, ; hash 0xcc1fe3525e36a9cf, from name: aot-System.Xml.XmlDocument.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.217, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1378
	%struct.DSOCacheEntry {
		i64 14713405421650509891, ; hash 0xcc308446a9c90043, from name: libaot-System.Collections.NonGeneric.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.125, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1379
	%struct.DSOCacheEntry {
		i64 14724569239063348517, ; hash 0xcc582db57503c525, from name: aot-Xamarin.AndroidX.VectorDrawable.Animated
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.248, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1380
	%struct.DSOCacheEntry {
		i64 14726144688497773647, ; hash 0xcc5dc6925cea4c4f, from name: libaot-Xamarin.AndroidX.Loader.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.228, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1381
	%struct.DSOCacheEntry {
		i64 14748453274413063167, ; hash 0xccad081cc7d65bff, from name: aot-Xamarin.AndroidX.VectorDrawable.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.124, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1382
	%struct.DSOCacheEntry {
		i64 14749613074536373161, ; hash 0xccb126f1ca329ba9, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.224, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1383
	%struct.DSOCacheEntry {
		i64 14755978183439467193, ; hash 0xccc7c3fa3152c2b9, from name: aot-System.IO.IsolatedStorage
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.292, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1384
	%struct.DSOCacheEntry {
		i64 14761658010069183920, ; hash 0xccdbf1bfe1f92db0, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.224, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1385
	%struct.DSOCacheEntry {
		i64 14783105725698854274, ; hash 0xcd2824555152cd82, from name: libaot-Microsoft.Maui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1386
	%struct.DSOCacheEntry {
		i64 14784039497208491432, ; hash 0xcd2b7597f074eda8, from name: libaot-System.Runtime.CompilerServices.VisualC
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1387
	%struct.DSOCacheEntry {
		i64 14791819750225326047, ; hash 0xcd4719b141c9afdf, from name: aot-Microsoft.Win32.Registry.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.233, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1388
	%struct.DSOCacheEntry {
		i64 14793308678264731746, ; hash 0xcd4c63dd54ac3862, from name: libaot-System.Collections.Immutable
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.206, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1389
	%struct.DSOCacheEntry {
		i64 14797884060996115029, ; hash 0xcd5ca526a3169a55, from name: aot-System.Net.Requests
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.213, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1390
	%struct.DSOCacheEntry {
		i64 14800755485097659115, ; hash 0xcd66d8b228a90aeb, from name: libaot-zxing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.197, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1391
	%struct.DSOCacheEntry {
		i64 14807083563216355521, ; hash 0xcd7d540ca90940c1, from name: libaot-Camera.MAUI
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.182, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1392
	%struct.DSOCacheEntry {
		i64 14832630590065248058, ; hash 0xcdd816ef5d6e873a, from name: System.Security.Claims
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.111, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1393
	%struct.DSOCacheEntry {
		i64 14833034687618711860, ; hash 0xcdd98675a88f8134, from name: libaot-Mono.Android.Export.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.257, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1394
	%struct.DSOCacheEntry {
		i64 14848298015145851925, ; hash 0xce0fc06007e7fc15, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.137, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1395
	%struct.DSOCacheEntry {
		i64 14852025521463078876, ; hash 0xce1cfe85b9d7afdc, from name: aot-Xamarin.AndroidX.Loader.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.228, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1396
	%struct.DSOCacheEntry {
		i64 14861939854077530687, ; hash 0xce40378e2b83123f, from name: libaot-System.Xml.XmlSerializer
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.195, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1397
	%struct.DSOCacheEntry {
		i64 14868030760753516242, ; hash 0xce55db33e44b4ed2, from name: Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.139, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1398
	%struct.DSOCacheEntry {
		i64 14869852093854666502, ; hash 0xce5c53b20cce4f06, from name: aot-Xamarin.AndroidX.Startup.StartupRuntime
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.181, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1399
	%struct.DSOCacheEntry {
		i64 14896568121329360884, ; hash 0xcebb3dc7ec3e9ff4, from name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.270, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1400
	%struct.DSOCacheEntry {
		i64 14912225920358050525, ; hash 0xcef2de7759506add, from name: System.Security.Principal.Windows
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1401
	%struct.DSOCacheEntry {
		i64 14929951904236909252, ; hash 0xcf31d82795b532c4, from name: aot-System.Numerics.Vectors
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.175, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1402
	%struct.DSOCacheEntry {
		i64 14937857240486681905, ; hash 0xcf4dee041cb49d31, from name: aot-Microsoft.Extensions.Configuration
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1403
	%struct.DSOCacheEntry {
		i64 14939551082710594120, ; hash 0xcf53f28e7cc47248, from name: mono-component-hot_reload
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.205, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1404
	%struct.DSOCacheEntry {
		i64 14941060615656587977, ; hash 0xcf594f7803ca42c9, from name: libaot-System.Net.WebSockets
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1405
	%struct.DSOCacheEntry {
		i64 14944457164796803836, ; hash 0xcf65609cbcc13afc, from name: libaot-System.IO.FileSystem.Primitives
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.225, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1406
	%struct.DSOCacheEntry {
		i64 14956178634283043352, ; hash 0xcf8f053a05ba4a18, from name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.130, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1407
	%struct.DSOCacheEntry {
		i64 14984936317414011727, ; hash 0xcff5302fe54ff34f, from name: System.Net.WebHeaderCollection
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.221, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1408
	%struct.DSOCacheEntry {
		i64 14986218813611173632, ; hash 0xcff9be9c4f91e700, from name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1409
	%struct.DSOCacheEntry {
		i64 14988210264188246988, ; hash 0xd000d1d307cddbcc, from name: Xamarin.AndroidX.DocumentFile
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.214, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1410
	%struct.DSOCacheEntry {
		i64 14991793843564863672, ; hash 0xd00d8d121f9260b8, from name: libaot-System.Security.Cryptography.Primitives
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.178, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1411
	%struct.DSOCacheEntry {
		i64 15024878362326791334, ; hash 0xd0831743ebf0f4a6, from name: System.Net.Http.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1412
	%struct.DSOCacheEntry {
		i64 15036185568982365226, ; hash 0xd0ab431c200c742a, from name: libaot-Xamarin.Google.Guava.ListenableFuture.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.149, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1413
	%struct.DSOCacheEntry {
		i64 15036676938210766038, ; hash 0xd0ad0201f05c6cd6, from name: Xamarin.AndroidX.Navigation.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.173, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1414
	%struct.DSOCacheEntry {
		i64 15050645847315261456, ; hash 0xd0dea2a8096f2810, from name: aot-System.Runtime.Handles
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1415
	%struct.DSOCacheEntry {
		i64 15053928356398764554, ; hash 0xd0ea4c14bd54120a, from name: aot-Microsoft.CSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1416
	%struct.DSOCacheEntry {
		i64 15072845069191995765, ; hash 0xd12d80bb27afe175, from name: libaot-System.Configuration
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1417
	%struct.DSOCacheEntry {
		i64 15074836884257005195, ; hash 0xd1349446bd185e8b, from name: libaot-System.Runtime.InteropServices.JavaScript
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.166, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1418
	%struct.DSOCacheEntry {
		i64 15090838584360273560, ; hash 0xd16d6dbcdf8d8698, from name: aot-System.IO.Compression.FileSystem.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.177, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1419
	%struct.DSOCacheEntry {
		i64 15104180077898997103, ; hash 0xd19cd3c166b39d6f, from name: libaot-System.Net.WebSockets.Client
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1420
	%struct.DSOCacheEntry {
		i64 15112147962820809439, ; hash 0xd1b922812d13d2df, from name: aot-System.Security.AccessControl
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.184, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1421
	%struct.DSOCacheEntry {
		i64 15117797221388578338, ; hash 0xd1cd3479af40ee22, from name: libaot-Xamarin.AndroidX.VectorDrawable.Animated.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.248, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1422
	%struct.DSOCacheEntry {
		i64 15140106800612261962, ; hash 0xd21c76eb5ff8404a, from name: libaot-System.IO.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1423
	%struct.DSOCacheEntry {
		i64 15142340276538647158, ; hash 0xd2246641032d2276, from name: System.Reflection.Metadata.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1424
	%struct.DSOCacheEntry {
		i64 15142421214196732689, ; hash 0xd224afddc7891311, from name: aot-System.AppContext
		i8 1, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.161, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1425
	%struct.DSOCacheEntry {
		i64 15169277521300507936, ; hash 0xd28419890c6f4d20, from name: aot-System.Threading.Thread.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1426
	%struct.DSOCacheEntry {
		i64 15178188182332606664, ; hash 0xd2a3c1bbfdf788c8, from name: aot-System.Threading.Tasks.Parallel
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1427
	%struct.DSOCacheEntry {
		i64 15182648138039228807, ; hash 0xd2b39a0a5992f987, from name: libaot-Microsoft.Extensions.Caching.Memory
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.119, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1428
	%struct.DSOCacheEntry {
		i64 15186020907486796291, ; hash 0xd2bf958e6e67da03, from name: libaot-System.Xml.XPath.XDocument.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.258, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1429
	%struct.DSOCacheEntry {
		i64 15209665098310826992, ; hash 0xd31395d299793bf0, from name: libaot-System.Security.Cryptography.Csp
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.219, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1430
	%struct.DSOCacheEntry {
		i64 15212030046956336817, ; hash 0xd31bfcbb1d66b6b1, from name: libaot-System.Runtime.Loader.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.246, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1431
	%struct.DSOCacheEntry {
		i64 15216590919956829692, ; hash 0xd32c30d21c7615fc, from name: mscorlib.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1432
	%struct.DSOCacheEntry {
		i64 15225082071389566405, ; hash 0xd34a5b7a5d57f5c5, from name: aot-System.Resources.ResourceManager
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.153, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1433
	%struct.DSOCacheEntry {
		i64 15241652306130060418, ; hash 0xd3853a04c8e54482, from name: aot-System.Runtime.Extensions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1434
	%struct.DSOCacheEntry {
		i64 15249981825801789156, ; hash 0xd3a2d1ac36141ee4, from name: libaot-System.Configuration.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1435
	%struct.DSOCacheEntry {
		i64 15272359115529052076, ; hash 0xd3f251b2fb4edfac, from name: Xamarin.AndroidX.Collection.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.196, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1436
	%struct.DSOCacheEntry {
		i64 15275473185398115273, ; hash 0xd3fd61eddfa8cbc9, from name: libaot-System.IO.FileSystem.Watcher.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.159, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1437
	%struct.DSOCacheEntry {
		i64 15276352876648998502, ; hash 0xd4008200f42e2666, from name: libaot-Xamarin.AndroidX.Lifecycle.Runtime
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.266, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1438
	%struct.DSOCacheEntry {
		i64 15287759098695794728, ; hash 0xd42907e6f9824028, from name: System.IO.Compression.Brotli.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.201, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1439
	%struct.DSOCacheEntry {
		i64 15326452432051871014, ; hash 0xd4b27f48af5f9d26, from name: libaot-Xamarin.GooglePlayServices.Basement
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.199, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1440
	%struct.DSOCacheEntry {
		i64 15336335058859734039, ; hash 0xd4d59b7b0bb43417, from name: libaot-Microsoft.Win32.Primitives.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.98, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1441
	%struct.DSOCacheEntry {
		i64 15338463749992804988, ; hash 0xd4dd2b839286f27c, from name: System.Resources.Reader
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.237, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1442
	%struct.DSOCacheEntry {
		i64 15348282727708163003, ; hash 0xd5000dd2794efbbb, from name: aot-System.Runtime.InteropServices.JavaScript
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.166, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1443
	%struct.DSOCacheEntry {
		i64 15361183609531804313, ; hash 0xd52de31b17b22a99, from name: System.Collections.Concurrent.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.155, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1444
	%struct.DSOCacheEntry {
		i64 15363175152636011871, ; hash 0xd534f6675afa255f, from name: aot-System.Globalization.Calendars.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.126, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1445
	%struct.DSOCacheEntry {
		i64 15371816955219117674, ; hash 0xd553aa13d029866a, from name: libaot-System.ComponentModel
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1446
	%struct.DSOCacheEntry {
		i64 15380401783038358320, ; hash 0xd57229eeccc93330, from name: aot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.139, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1447
	%struct.DSOCacheEntry {
		i64 15385617065962309506, ; hash 0xd584b1347adf0782, from name: libaot-Xamarin.AndroidX.Navigation.UI
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.286, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1448
	%struct.DSOCacheEntry {
		i64 15391712275433856905, ; hash 0xd59a58c406411f89, from name: Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.261, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1449
	%struct.DSOCacheEntry {
		i64 15394198501530322172, ; hash 0xd5a32df9a590c4fc, from name: libaot-Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1450
	%struct.DSOCacheEntry {
		i64 15420320794302889280, ; hash 0xd5fffc0fe2fe3d40, from name: aot-System.Numerics.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.203, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1451
	%struct.DSOCacheEntry {
		i64 15422501938551467493, ; hash 0xd607bbcd1b222de5, from name: System.ComponentModel.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1452
	%struct.DSOCacheEntry {
		i64 15423155670371195942, ; hash 0xd60a0e5de806dc26, from name: aot-Plugin.LocalNotification.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1453
	%struct.DSOCacheEntry {
		i64 15441728228412085485, ; hash 0xd64c0a028c9fd4ed, from name: libaot-System.Runtime.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.106, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1454
	%struct.DSOCacheEntry {
		i64 15465553130743477305, ; hash 0xd6a0aea1e4e53439, from name: System.Net.NameResolution.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1455
	%struct.DSOCacheEntry {
		i64 15475714952301452914, ; hash 0xd6c4c8c159211e72, from name: libaot-Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.263, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1456
	%struct.DSOCacheEntry {
		i64 15476609812571688208, ; hash 0xd6c7f6a03da90d10, from name: libaot-Microsoft.Extensions.Configuration
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1457
	%struct.DSOCacheEntry {
		i64 15489493229072521270, ; hash 0xd6f5bc0665af9836, from name: aot-Xamarin.AndroidX.CursorAdapter
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1458
	%struct.DSOCacheEntry {
		i64 15497850842773803608, ; hash 0xd7136d3af9855258, from name: libaot-System.Net.Quic
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.143, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1459
	%struct.DSOCacheEntry {
		i64 15503723175688157554, ; hash 0xd7284a1606e23972, from name: aot-System.Private.CoreLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.211, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1460
	%struct.DSOCacheEntry {
		i64 15508200808610002858, ; hash 0xd73832782e9ff7aa, from name: libaot-System.Net.Http.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1461
	%struct.DSOCacheEntry {
		i64 15527772828719725935, ; hash 0xd77dbb1e38cd3d6f, from name: System.Console
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1462
	%struct.DSOCacheEntry {
		i64 15545187331490926511, ; hash 0xd7bb99841c6b4faf, from name: aot-System.Globalization.Extensions
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1463
	%struct.DSOCacheEntry {
		i64 15550679837847413401, ; hash 0xd7cf1cebe6b96299, from name: libaot-Xamarin.AndroidX.VersionedParcelable
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.210, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1464
	%struct.DSOCacheEntry {
		i64 15557562860424774966, ; hash 0xd7e790fe7a6dc536, from name: System.Net.Sockets
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.200, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1465
	%struct.DSOCacheEntry {
		i64 15580617819598355615, ; hash 0xd839795b7647fc9f, from name: libaot-System.Globalization.Calendars.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.126, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1466
	%struct.DSOCacheEntry {
		i64 15582737692548360875, ; hash 0xd841015ed86f6aab, from name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		i8 1, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.267, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1467
	%struct.DSOCacheEntry {
		i64 15602862011767004647, ; hash 0xd88880550acf1de7, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.137, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1468
	%struct.DSOCacheEntry {
		i64 15617887668700861200, ; hash 0xd8bde2166ade5310, from name: aot-System.Net.Requests.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.213, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1469
	%struct.DSOCacheEntry {
		i64 15618115602383773515, ; hash 0xd8beb1645d121f4b, from name: libaot-System.ServiceProcess.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1470
	%struct.DSOCacheEntry {
		i64 15619289540722620146, ; hash 0xd8c2dd152ebef6f2, from name: aot-System.Security.Principal
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.179, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1471
	%struct.DSOCacheEntry {
		i64 15619787930512100580, ; hash 0xd8c4a25d991b8ce4, from name: libaot-System.Diagnostics.TraceSource.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.107, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1472
	%struct.DSOCacheEntry {
		i64 15623703258564015407, ; hash 0xd8d28b55f2d2352f, from name: aot-System.Net.Ping
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.94, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1473
	%struct.DSOCacheEntry {
		i64 15637181376593849944, ; hash 0xd9026d9cd83aee58, from name: aot-System.Security.Claims
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.111, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1474
	%struct.DSOCacheEntry {
		i64 15659595283356337508, ; hash 0xd9520ef12ed64564, from name: aot-System.Net.Security
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.280, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1475
	%struct.DSOCacheEntry {
		i64 15664512801553002624, ; hash 0xd96387661c203080, from name: libaot-Xamarin.Android.Glide.Annotations.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1476
	%struct.DSOCacheEntry {
		i64 15667477422179167780, ; hash 0xd96e0fb4a3712e24, from name: System.Xml.Serialization.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.216, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1477
	%struct.DSOCacheEntry {
		i64 15701694690689555544, ; hash 0xd9e7a0214a301c58, from name: aot-System.ServiceModel.Web
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.133, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1478
	%struct.DSOCacheEntry {
		i64 15710114879900314733, ; hash 0xda058a3f5d096c6d, from name: Microsoft.Win32.Registry
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.233, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1479
	%struct.DSOCacheEntry {
		i64 15712039776084801819, ; hash 0xda0c60ee2e57b91b, from name: aot-Microsoft.Maui.Essentials.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.198, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1480
	%struct.DSOCacheEntry {
		i64 15715135426312951253, ; hash 0xda1760686a8a55d5, from name: libaot-System.Threading.Tasks.Parallel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1481
	%struct.DSOCacheEntry {
		i64 15734978453794313066, ; hash 0xda5ddf8946d5d36a, from name: aot-System.Security.Cryptography.X509Certificates
		i8 1, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.204, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1482
	%struct.DSOCacheEntry {
		i64 15735568087783371236, ; hash 0xda5ff7ce234cf1e4, from name: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.265, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1483
	%struct.DSOCacheEntry {
		i64 15738216224564018185, ; hash 0xda696045876d7c09, from name: aot-Xamarin.AndroidX.ExifInterface
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.252, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1484
	%struct.DSOCacheEntry {
		i64 15742342285542832975, ; hash 0xda7808e6f6643b4f, from name: libaot-System.ComponentModel.TypeConverter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.144, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1485
	%struct.DSOCacheEntry {
		i64 15743850336609555076, ; hash 0xda7d64777686d284, from name: aot-System.Security.Cryptography.Csp.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.219, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1486
	%struct.DSOCacheEntry {
		i64 15755368083429170162, ; hash 0xdaa64fcbde529bf2, from name: System.IO.FileSystem.Primitives
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.225, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1487
	%struct.DSOCacheEntry {
		i64 15763336660331019481, ; hash 0xdac29f2cc1ec3cd9, from name: libSkiaSharp.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.167, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1488
	%struct.DSOCacheEntry {
		i64 15778138015801058191, ; hash 0xdaf734ede0e8a38f, from name: System.Resources.Writer.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.180, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1489
	%struct.DSOCacheEntry {
		i64 15801103922446586191, ; hash 0xdb48cc4cb475d14f, from name: libaot-System.Runtime.Serialization.Xml
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.190, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1490
	%struct.DSOCacheEntry {
		i64 15804685206979087323, ; hash 0xdb5585757cdc0bdb, from name: libaot-System.Globalization.Calendars
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.126, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1491
	%struct.DSOCacheEntry {
		i64 15835139485973775801, ; hash 0xdbc1b776de3a85b9, from name: aot-System.IO.Compression.FileSystem
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.177, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1492
	%struct.DSOCacheEntry {
		i64 15847727014260307913, ; hash 0xdbee6fc12e58f7c9, from name: aot-Xamarin.AndroidX.SavedState.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.132, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1493
	%struct.DSOCacheEntry {
		i64 15862942918925224802, ; hash 0xdc247e8a0ed60b62, from name: libaot-System.Dynamic.Runtime.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.293, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1494
	%struct.DSOCacheEntry {
		i64 15868406323278249511, ; hash 0xdc37e77a028ffe27, from name: aot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.240, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1495
	%struct.DSOCacheEntry {
		i64 15869986477656553338, ; hash 0xdc3d849e5ef8b77a, from name: libaot-System.Collections.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.101, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1496
	%struct.DSOCacheEntry {
		i64 15871886212343324518, ; hash 0xdc44446ad224df66, from name: libaot-Xamarin.AndroidX.Arch.Core.Common
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.171, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1497
	%struct.DSOCacheEntry {
		i64 15885744048853936810, ; hash 0xdc75800bd0b6eaaa, from name: System.Resources.Writer
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.180, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1498
	%struct.DSOCacheEntry {
		i64 15904398121613806925, ; hash 0xdcb7c5d3952e4d4d, from name: libaot-System.Transactions.Local
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1499
	%struct.DSOCacheEntry {
		i64 15908591910761673656, ; hash 0xdcc6ac0e359a33b8, from name: aot-Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1500
	%struct.DSOCacheEntry {
		i64 15920910109220503623, ; hash 0xdcf26f6449038047, from name: System.Private.CoreLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.211, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1501
	%struct.DSOCacheEntry {
		i64 15928521404965645318, ; hash 0xdd0d79d32c2eec06, from name: Microsoft.Maui.Controls.Compatibility
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.102, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1502
	%struct.DSOCacheEntry {
		i64 15934062614519587357, ; hash 0xdd2129868f45a21d, from name: System.Security.Cryptography.OpenSsl
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.284, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1503
	%struct.DSOCacheEntry {
		i64 15937190497610202713, ; hash 0xdd2c465197c97e59, from name: System.Security.Cryptography.Cng
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.244, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1504
	%struct.DSOCacheEntry {
		i64 15953629603678197891, ; hash 0xdd66ad993d651883, from name: libaot-System.Diagnostics.StackTrace
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.241, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1505
	%struct.DSOCacheEntry {
		i64 15958977808799221818, ; hash 0xdd79adc347d1c83a, from name: System.Net.Security.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.280, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1506
	%struct.DSOCacheEntry {
		i64 15963349826457351533, ; hash 0xdd893616f748b56d, from name: System.Threading.Tasks.Extensions
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.223, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1507
	%struct.DSOCacheEntry {
		i64 15964641699753034279, ; hash 0xdd8dcd0aa82b0227, from name: libaot-Xamarin.AndroidX.SwipeRefreshLayout
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.170, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1508
	%struct.DSOCacheEntry {
		i64 15966880053891205882, ; hash 0xdd95c0d017748afa, from name: libaot-System.Threading.Tasks.Extensions
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.223, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1509
	%struct.DSOCacheEntry {
		i64 16004199028078918232, ; hash 0xde1a5638df4bba58, from name: System.Net.WebHeaderCollection.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.221, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1510
	%struct.DSOCacheEntry {
		i64 16011614235295386646, ; hash 0xde34ae50575e8c16, from name: System.Net.ServicePoint.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.183, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1511
	%struct.DSOCacheEntry {
		i64 16019147812295987827, ; hash 0xde4f720fec60d273, from name: Xamarin.AndroidX.Annotation.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.91, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1512
	%struct.DSOCacheEntry {
		i64 16028674295501350649, ; hash 0xde714a5923cae6f9, from name: libaot-System.Runtime.Extensions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1513
	%struct.DSOCacheEntry {
		i64 16034513218355378781, ; hash 0xde8608d14e60ba5d, from name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.173, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1514
	%struct.DSOCacheEntry {
		i64 16054465462676478687, ; hash 0xdecceb47319bdadf, from name: System.Globalization.Extensions
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1515
	%struct.DSOCacheEntry {
		i64 16082055429166766795, ; hash 0xdf2ef034d9a09acb, from name: aot-System.Xml.XmlDocument
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.217, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1516
	%struct.DSOCacheEntry {
		i64 16092207569901868800, ; hash 0xdf5301864fda5700, from name: libaot-Xamarin.AndroidX.Tracing.Tracing.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.273, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1517
	%struct.DSOCacheEntry {
		i64 16104729829736663434, ; hash 0xdf7f7e742117498a, from name: libaot-Microsoft.EntityFrameworkCore
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.131, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1518
	%struct.DSOCacheEntry {
		i64 16121628427822810037, ; hash 0xdfbb87a39937c3b5, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.265, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1519
	%struct.DSOCacheEntry {
		i64 16140149539819930312, ; hash 0xdffd547e06a6c2c8, from name: libaot-Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.164, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1520
	%struct.DSOCacheEntry {
		i64 16150697952833328807, ; hash 0xe022ce37d14256a7, from name: System.IO.Pipes.AccessControl.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.146, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1521
	%struct.DSOCacheEntry {
		i64 16151644148648336944, ; hash 0xe0262ac732b35e30, from name: aot-Xamarin.AndroidX.Browser
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.154, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1522
	%struct.DSOCacheEntry {
		i64 16154507427712707110, ; hash 0xe03056ea4e39aa26, from name: System
		i8 1, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.185, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1523
	%struct.DSOCacheEntry {
		i64 16182933535663939892, ; hash 0xe095544f51016134, from name: aot-Xamarin.Android.Glide
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.269, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1524
	%struct.DSOCacheEntry {
		i64 16186580156264869966, ; hash 0xe0a248e4568df04e, from name: libaot-Microsoft.Extensions.Options
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.151, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1525
	%struct.DSOCacheEntry {
		i64 16206008551326349247, ; hash 0xe0e74eea10bff7bf, from name: libaot-System.Formats.Tar
		i8 1, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.264, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1526
	%struct.DSOCacheEntry {
		i64 16210911171323730879, ; hash 0xe0f8b9d23c299bbf, from name: libaot-System.Private.DataContractSerialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1527
	%struct.DSOCacheEntry {
		i64 16212429077909136987, ; hash 0xe0fe1e5966fce65b, from name: libaot-System.ServiceModel.Web.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.133, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1528
	%struct.DSOCacheEntry {
		i64 16215129991522364183, ; hash 0xe107b6d0db792b17, from name: libaot-Xamarin.AndroidX.Activity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.238, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1529
	%struct.DSOCacheEntry {
		i64 16219561732052121626, ; hash 0xe1177575db7c781a, from name: System.Net.Security
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.280, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1530
	%struct.DSOCacheEntry {
		i64 16225652972018057753, ; hash 0xe12d19692de5c219, from name: libaot-System.Xml.XmlSerializer.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.195, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1531
	%struct.DSOCacheEntry {
		i64 16244479869324760570, ; hash 0xe16ffc5fcc1615fa, from name: aot-System.Security.Cryptography.Primitives.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.178, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1532
	%struct.DSOCacheEntry {
		i64 16252628236323224727, ; hash 0xe18cef4554877c97, from name: libaot-System.Transactions
		i8 1, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.93, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1533
	%struct.DSOCacheEntry {
		i64 16253390427661688581, ; hash 0xe18fa47ad4825f05, from name: libaot-System.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.276, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1534
	%struct.DSOCacheEntry {
		i64 16254491453283163162, ; hash 0xe1938ddb5590dc1a, from name: Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.291, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1535
	%struct.DSOCacheEntry {
		i64 16268781616454265773, ; hash 0xe1c652af39296bad, from name: aot-Xamarin.AndroidX.Tracing.Tracing
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.273, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1536
	%struct.DSOCacheEntry {
		i64 16273606707797624453, ; hash 0xe1d7771458b10685, from name: System.Native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.256, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1537
	%struct.DSOCacheEntry {
		i64 16329114974302298891, ; hash 0xe29cab8dc3cce30b, from name: aot-Microsoft.Extensions.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1538
	%struct.DSOCacheEntry {
		i64 16343990919570639460, ; hash 0xe2d18525ad37ca64, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.127, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1539
	%struct.DSOCacheEntry {
		i64 16354813168604688526, ; hash 0xe2f7f7ece290308e, from name: aot-System.Drawing.Primitives
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.134, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1540
	%struct.DSOCacheEntry {
		i64 16359895623217386732, ; hash 0xe30a0664105714ec, from name: libaot-System.Xml.XDocument
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.262, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1541
	%struct.DSOCacheEntry {
		i64 16366575316213272407, ; hash 0xe321c18948918f57, from name: Xamarin.GooglePlayServices.Base.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1542
	%struct.DSOCacheEntry {
		i64 16370340268830916137, ; hash 0xe32f21bd9ff07e29, from name: System.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.276, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1543
	%struct.DSOCacheEntry {
		i64 16381697928620763692, ; hash 0xe3577b78dd316a2c, from name: aot-System.Xml.XDocument
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.262, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1544
	%struct.DSOCacheEntry {
		i64 16411908373586787849, ; hash 0xe3c2cfb635e63e09, from name: libaot-System.Drawing.Primitives.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.134, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1545
	%struct.DSOCacheEntry {
		i64 16413721059704043258, ; hash 0xe3c940571601f6fa, from name: aot-System.Console.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1546
	%struct.DSOCacheEntry {
		i64 16423015068819898779, ; hash 0xe3ea453135e5c19b, from name: Xamarin.Kotlin.StdLib.Jdk8
		i8 1, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.97, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1547
	%struct.DSOCacheEntry {
		i64 16437079515119973484, ; hash 0xe41c3cbb4b93746c, from name: libaot-Xamarin.AndroidX.VectorDrawable.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.124, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1548
	%struct.DSOCacheEntry {
		i64 16454459195343277943, ; hash 0xe459fb756d988f77, from name: System.Net.NetworkInformation
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.176, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1549
	%struct.DSOCacheEntry {
		i64 16477862173331498088, ; hash 0xe4ad2057db452468, from name: Xamarin.AndroidX.SavedState.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.132, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1550
	%struct.DSOCacheEntry {
		i64 16481900306254799575, ; hash 0xe4bb7900f1b822d7, from name: aot-Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.291, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1551
	%struct.DSOCacheEntry {
		i64 16489622925355043035, ; hash 0xe4d6e8af51ecc8db, from name: aot-System.Net.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.207, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1552
	%struct.DSOCacheEntry {
		i64 16504549732499142624, ; hash 0xe50bf0896f6137e0, from name: libaot-System.IO.IsolatedStorage
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.292, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1553
	%struct.DSOCacheEntry {
		i64 16533587393220204778, ; hash 0xe5731a22abc458ea, from name: aot-Xamarin.AndroidX.Arch.Core.Runtime.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1554
	%struct.DSOCacheEntry {
		i64 16546075788856499521, ; hash 0xe59f7843dd7b9d41, from name: System.Runtime.Handles.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1555
	%struct.DSOCacheEntry {
		i64 16577343910374837510, ; hash 0xe60e8e74b9608d06, from name: libSkiaSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.167, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1556
	%struct.DSOCacheEntry {
		i64 16587993013165085709, ; hash 0xe63463c22e5dd40d, from name: libaot-Xamarin.GooglePlayServices.Base.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1557
	%struct.DSOCacheEntry {
		i64 16616675818235817923, ; hash 0xe69a4a9e25c4efc3, from name: aot-System.Runtime.Intrinsics.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.255, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1558
	%struct.DSOCacheEntry {
		i64 16621146507174665210, ; hash 0xe6aa2caf87dedbfa, from name: Xamarin.AndroidX.ConstraintLayout
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.250, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1559
	%struct.DSOCacheEntry {
		i64 16640193087310295438, ; hash 0xe6edd7730b0a718e, from name: libaot-Microsoft.VisualBasic.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1560
	%struct.DSOCacheEntry {
		i64 16649148416072044166, ; hash 0xe70da84600bb4e86, from name: Microsoft.Maui.Graphics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1561
	%struct.DSOCacheEntry {
		i64 16653338070420513259, ; hash 0xe71c8abdebe761eb, from name: aot-Xamarin.AndroidX.SavedState.SavedState.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.152, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1562
	%struct.DSOCacheEntry {
		i64 16658275551025667623, ; hash 0xe72e155ab5759e27, from name: libaot-System.Security.SecureString
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1563
	%struct.DSOCacheEntry {
		i64 16666876093969079408, ; hash 0xe74ca380a87a1c70, from name: aot-System.ComponentModel.EventBasedAsync.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1564
	%struct.DSOCacheEntry {
		i64 16672920045762198372, ; hash 0xe7621c71d8253b64, from name: aot-Xamarin.AndroidX.Lifecycle.Runtime
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.266, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1565
	%struct.DSOCacheEntry {
		i64 16677212169528880048, ; hash 0xe7715c1bc8972bb0, from name: libaot-Camera.MAUI.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.182, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1566
	%struct.DSOCacheEntry {
		i64 16677317093839702854, ; hash 0xe771bb8960dd8b46, from name: Xamarin.AndroidX.Navigation.UI
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.286, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1567
	%struct.DSOCacheEntry {
		i64 16680980346670206276, ; hash 0xe77ebf3ee48ccd44, from name: aot-System.IO.FileSystem.Primitives
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.225, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1568
	%struct.DSOCacheEntry {
		i64 16685592730301393375, ; hash 0xe78f222f247469df, from name: libaot-System.IO.Compression.FileSystem
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.177, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1569
	%struct.DSOCacheEntry {
		i64 16687522843226958423, ; hash 0xe795fd9c93c26a57, from name: aot-System.Data
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1570
	%struct.DSOCacheEntry {
		i64 16702652415771857902, ; hash 0xe7cbbde0b0e6d3ee, from name: System.ValueTuple
		i8 1, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.142, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1571
	%struct.DSOCacheEntry {
		i64 16709499819875633724, ; hash 0xe7e4118e32240a3c, from name: System.IO.Compression.ZipFile
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.113, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1572
	%struct.DSOCacheEntry {
		i64 16717189724135467099, ; hash 0xe7ff637b8de7a85b, from name: libmonosgen-2.0.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.283, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1573
	%struct.DSOCacheEntry {
		i64 16726246336088538334, ; hash 0xe81f906c583c7cde, from name: System.Reflection.TypeExtensions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.99, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1574
	%struct.DSOCacheEntry {
		i64 16730696072636839813, ; hash 0xe82f5f6f5e8ab785, from name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1575
	%struct.DSOCacheEntry {
		i64 16733100980842614628, ; hash 0xe837eaafb1dd4f64, from name: libaot-System.IO.Compression.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1576
	%struct.DSOCacheEntry {
		i64 16737807731308835127, ; hash 0xe848a3736f733137, from name: System.Runtime.Intrinsics
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.255, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1577
	%struct.DSOCacheEntry {
		i64 16756912368409526705, ; hash 0xe88c8304636641b1, from name: libaot-Xamarin.AndroidX.DynamicAnimation.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1578
	%struct.DSOCacheEntry {
		i64 16758309481308491337, ; hash 0xe89179af15740e49, from name: System.IO.FileSystem.DriveInfo
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1579
	%struct.DSOCacheEntry {
		i64 16762783179241323229, ; hash 0xe8a15e7d0d927add, from name: System.Reflection.TypeExtensions
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.99, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1580
	%struct.DSOCacheEntry {
		i64 16765175234154577062, ; hash 0xe8a9de0cbcf5bca6, from name: libaot-System.Security.Cryptography.Algorithms
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1581
	%struct.DSOCacheEntry {
		i64 16768067971893542065, ; hash 0xe8b424faba51bcb1, from name: libaot-Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1582
	%struct.DSOCacheEntry {
		i64 16778162983708529344, ; hash 0xe8d80256d38e12c0, from name: libaot-Microsoft.Extensions.Options.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.151, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1583
	%struct.DSOCacheEntry {
		i64 16804602679676381986, ; hash 0xe935f11a41b02b22, from name: monosgen-2.0
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.283, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1584
	%struct.DSOCacheEntry {
		i64 16812641203226435415, ; hash 0xe9528018de685f57, from name: libaot-System.Private.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.229, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1585
	%struct.DSOCacheEntry {
		i64 16818814240165112060, ; hash 0xe9686e710852a8fc, from name: aot-System.Private.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.285, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1586
	%struct.DSOCacheEntry {
		i64 16822611501064131242, ; hash 0xe975ec07bb5412aa, from name: System.Data.DataSetExtensions
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.202, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1587
	%struct.DSOCacheEntry {
		i64 16828654736957370171, ; hash 0xe98b64523c09ef3b, from name: aot-Xamarin.AndroidX.ConstraintLayout.Core
		i8 1, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1588
	%struct.DSOCacheEntry {
		i64 16830071444984673572, ; hash 0xe9906ccf46c1b524, from name: aot-Xamarin.AndroidX.Media.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.247, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1589
	%struct.DSOCacheEntry {
		i64 16831427098943474553, ; hash 0xe9953dc50f68cb79, from name: aot-Microsoft.Extensions.Logging
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.289, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1590
	%struct.DSOCacheEntry {
		i64 16833383113903931215, ; hash 0xe99c30c1484d7f4f, from name: mscorlib
		i8 1, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1591
	%struct.DSOCacheEntry {
		i64 16836283848371485551, ; hash 0xe9a67ef527d43b6f, from name: System.Threading.Tasks.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1592
	%struct.DSOCacheEntry {
		i64 16867396477207970224, ; hash 0xea1507ba8da801b0, from name: aot-Xamarin.AndroidX.Annotation.Experimental.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1593
	%struct.DSOCacheEntry {
		i64 16913431814627102754, ; hash 0xeab8949fcba39022, from name: aot-Mono.Android.Export.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.257, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1594
	%struct.DSOCacheEntry {
		i64 16918190388480372542, ; hash 0xeac97c859bccef3e, from name: aot-Xamarin.AndroidX.ConstraintLayout.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.250, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1595
	%struct.DSOCacheEntry {
		i64 16924802110373038789, ; hash 0xeae0f9d912910ac5, from name: libaot-System.IO.Compression.Brotli.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.201, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1596
	%struct.DSOCacheEntry {
		i64 16926798323237543726, ; hash 0xeae8116499405f2e, from name: libaot-System.Formats.Asn1
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.259, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1597
	%struct.DSOCacheEntry {
		i64 16948040093346346617, ; hash 0xeb3388ab9afcb679, from name: System.ComponentModel.Primitives.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.104, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1598
	%struct.DSOCacheEntry {
		i64 16967745026080341269, ; hash 0xeb798a33c6eb7d15, from name: aot-System.Threading.Tasks
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1599
	%struct.DSOCacheEntry {
		i64 16973981476142157684, ; hash 0xeb8fb23875838f74, from name: aot-System.Diagnostics.FileVersionInfo.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1600
	%struct.DSOCacheEntry {
		i64 16977952268158210142, ; hash 0xeb9dcda2851b905e, from name: System.IO.Pipes.AccessControl
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.146, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1601
	%struct.DSOCacheEntry {
		i64 16989020923549080504, ; hash 0xebc52084add25bb8, from name: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.265, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1602
	%struct.DSOCacheEntry {
		i64 16989764869531577419, ; hash 0xebc7c52219d72c4b, from name: aot-Xamarin.GooglePlayServices.Tasks.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1603
	%struct.DSOCacheEntry {
		i64 16996475080257383455, ; hash 0xebdf9c08c8852c1f, from name: aot-System.Reflection.TypeExtensions
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.99, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1604
	%struct.DSOCacheEntry {
		i64 16998075588627545693, ; hash 0xebe54bb02d623e5d, from name: Xamarin.AndroidX.Navigation.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.173, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1605
	%struct.DSOCacheEntry {
		i64 17006494245921786209, ; hash 0xec03346992e48961, from name: libaot-System.Security.Cryptography.X509Certificates
		i8 1, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.204, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1606
	%struct.DSOCacheEntry {
		i64 17007211756263440882, ; hash 0xec05c0fbf7ee01f2, from name: System.IO.FileSystem.AccessControl.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.260, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1607
	%struct.DSOCacheEntry {
		i64 17008137082415910100, ; hash 0xec090a90408c8cd4, from name: System.Collections.NonGeneric
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.125, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1608
	%struct.DSOCacheEntry {
		i64 17013129365086196242, ; hash 0xec1ac704a3bad212, from name: libaot-System.IO.FileSystem.AccessControl.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.260, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1609
	%struct.DSOCacheEntry {
		i64 17032593994390949682, ; hash 0xec5fedfecf1fcf32, from name: aot-Xamarin.AndroidX.Print.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1610
	%struct.DSOCacheEntry {
		i64 17037200463775726619, ; hash 0xec704b8e0a78fc1b, from name: Xamarin.AndroidX.Legacy.Support.Core.Utils
		i8 1, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.263, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1611
	%struct.DSOCacheEntry {
		i64 17040771374769818752, ; hash 0xec7cfb478bcccc80, from name: zxing
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.197, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1612
	%struct.DSOCacheEntry {
		i64 17044826177233943830, ; hash 0xec8b6319d04efd16, from name: Xamarin.AndroidX.Media.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.247, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1613
	%struct.DSOCacheEntry {
		i64 17054402883587265903, ; hash 0xecad6910849dd56f, from name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.266, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1614
	%struct.DSOCacheEntry {
		i64 17055547629728291761, ; hash 0xecb17a347fb5dbb1, from name: aot-System.Xml.ReaderWriter
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.208, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1615
	%struct.DSOCacheEntry {
		i64 17062143951396181894, ; hash 0xecc8e986518c9786, from name: System.ComponentModel.Primitives
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.104, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1616
	%struct.DSOCacheEntry {
		i64 17070628900825419556, ; hash 0xece70e8a8e374f24, from name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.139, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1617
	%struct.DSOCacheEntry {
		i64 17082446950197443642, ; hash 0xed110afe98f93c3a, from name: aot-System.Web.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1618
	%struct.DSOCacheEntry {
		i64 17101065054293908625, ; hash 0xed53300fc208dc91, from name: libaot-System.Xml.Serialization
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.216, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1619
	%struct.DSOCacheEntry {
		i64 17118171214553292978, ; hash 0xed8ff6060fc420b2, from name: System.Threading.Channels
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1620
	%struct.DSOCacheEntry {
		i64 17120926316294086252, ; hash 0xed99bfc62c589e6c, from name: libaot-Newtonsoft.Json.Bson
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.136, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1621
	%struct.DSOCacheEntry {
		i64 17121910816993127055, ; hash 0xed9d3f2c1acb2a8f, from name: libaot-Xamarin.Jetbrains.Annotations.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.138, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1622
	%struct.DSOCacheEntry {
		i64 17128100412849293457, ; hash 0xedb33c93b11a8891, from name: aot-System.ComponentModel.DataAnnotations
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1623
	%struct.DSOCacheEntry {
		i64 17136618570653034468, ; hash 0xedd17fcbdb22e7e4, from name: System.IO.FileSystem.Primitives.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.225, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1624
	%struct.DSOCacheEntry {
		i64 17145939910537407827, ; hash 0xedf29d816bc66d53, from name: libaot-System.Reflection.DispatchProxy.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.109, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1625
	%struct.DSOCacheEntry {
		i64 17154774957774660825, ; hash 0xee1200ef27ece4d9, from name: aot-System.Threading.Tasks.Dataflow.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.121, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1626
	%struct.DSOCacheEntry {
		i64 17158514347283794486, ; hash 0xee1f49e39f4b4a36, from name: libaot-System.Formats.Tar.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.264, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1627
	%struct.DSOCacheEntry {
		i64 17171158695853098468, ; hash 0xee4c35db702f05e4, from name: libaot-System.AppContext.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.161, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1628
	%struct.DSOCacheEntry {
		i64 17185887059099912167, ; hash 0xee808939bba207e7, from name: Xamarin.AndroidX.Collection.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.196, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1629
	%struct.DSOCacheEntry {
		i64 17198632731134806627, ; hash 0xeeadd158c1b24a63, from name: System.Windows.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.156, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1630
	%struct.DSOCacheEntry {
		i64 17201328579425343169, ; hash 0xeeb76534d96c16c1, from name: System.ComponentModel.EventBasedAsync
		i8 1, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1631
	%struct.DSOCacheEntry {
		i64 17230721278011714856, ; hash 0xef1fd1b5c7a72d28, from name: System.Private.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.229, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1632
	%struct.DSOCacheEntry {
		i64 17252806954862991943, ; hash 0xef6e488422ff5a47, from name: libaot-Xamarin.AndroidX.Collection.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.105, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1633
	%struct.DSOCacheEntry {
		i64 17260702271250283638, ; hash 0xef8a5543bba6bc76, from name: System.Data.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.145, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1634
	%struct.DSOCacheEntry {
		i64 17307240838015558791, ; hash 0xf02fabd8300d2487, from name: libaot-System.Net.NetworkInformation
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.176, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1635
	%struct.DSOCacheEntry {
		i64 17309541862275468045, ; hash 0xf037d89d25aecb0d, from name: Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1636
	%struct.DSOCacheEntry {
		i64 17310387669210885385, ; hash 0xf03ad9deeb9ded09, from name: aot-System.Diagnostics.Contracts
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1637
	%struct.DSOCacheEntry {
		i64 17317630548055557570, ; hash 0xf054953b104e05c2, from name: aot-System.Data.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.145, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1638
	%struct.DSOCacheEntry {
		i64 17321896332601854532, ; hash 0xf063bcf06ce00a44, from name: System.Security.Cryptography.Csp.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.219, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1639
	%struct.DSOCacheEntry {
		i64 17353272485882399419, ; hash 0xf0d3356263948abb, from name: Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1640
	%struct.DSOCacheEntry {
		i64 17360349973592121190, ; hash 0xf0ec5a52686b9f66, from name: Xamarin.Google.Crypto.Tink.Android
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1641
	%struct.DSOCacheEntry {
		i64 17385151973004961448, ; hash 0xf144779be52466a8, from name: libaot-System.Data.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1642
	%struct.DSOCacheEntry {
		i64 17402366034782696113, ; hash 0xf1819fb4fa8bb2b1, from name: System.Security.Cryptography.Primitives.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.178, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1643
	%struct.DSOCacheEntry {
		i64 17404258022326120933, ; hash 0xf1885875a7fdb1e5, from name: libaot-System.Dynamic.Runtime
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.293, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1644
	%struct.DSOCacheEntry {
		i64 17409515122893045457, ; hash 0xf19b05c3c3d4bed1, from name: libaot-System.Net.Mail.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.251, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1645
	%struct.DSOCacheEntry {
		i64 17413454142804747506, ; hash 0xf1a904484e6e64f2, from name: aot-System.Diagnostics.Tools
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.215, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1646
	%struct.DSOCacheEntry {
		i64 17426267689422556144, ; hash 0xf1d68a229ce60bf0, from name: aot-System.Diagnostics.Process
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.230, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1647
	%struct.DSOCacheEntry {
		i64 17451386204284126469, ; hash 0xf22fc74a98820505, from name: aot-Xamarin.AndroidX.Navigation.UI
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.286, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1648
	%struct.DSOCacheEntry {
		i64 17453504965091914764, ; hash 0xf2374e4b09d1f40c, from name: libaot-System.IO.Pipes
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.227, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1649
	%struct.DSOCacheEntry {
		i64 17464508702623786544, ; hash 0xf25e6622549be630, from name: aot-System.Security.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1650
	%struct.DSOCacheEntry {
		i64 17470386307322966175, ; hash 0xf27347c8d0d5709f, from name: System.Threading.Timer
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.271, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1651
	%struct.DSOCacheEntry {
		i64 17474527379847198219, ; hash 0xf281fe1165a1360b, from name: libaot-System
		i8 1, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.185, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1652
	%struct.DSOCacheEntry {
		i64 17479433570620501354, ; hash 0xf2936c38f3df6d6a, from name: aot-System.Diagnostics.StackTrace
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.241, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1653
	%struct.DSOCacheEntry {
		i64 17501557440705411739, ; hash 0xf2e205c3dd573a9b, from name: libaot-System.Net.Requests.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.213, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1654
	%struct.DSOCacheEntry {
		i64 17521398138824957963, ; hash 0xf32882c660da200b, from name: System.Net.HttpListener.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.122, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1655
	%struct.DSOCacheEntry {
		i64 17522591619082469157, ; hash 0xf32cc03d27a5bf25, from name: GoogleGson
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.120, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1656
	%struct.DSOCacheEntry {
		i64 17541980841062246666, ; hash 0xf371a2a23039290a, from name: aot-System.Security.SecureString.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1657
	%struct.DSOCacheEntry {
		i64 17544493274320527064, ; hash 0xf37a8fada41aded8, from name: Xamarin.AndroidX.AsyncLayoutInflater
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1658
	%struct.DSOCacheEntry {
		i64 17548352402451517946, ; hash 0xf3884588ed7ed1fa, from name: Xamarin.AndroidX.VectorDrawable.Animated.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.248, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1659
	%struct.DSOCacheEntry {
		i64 17563211817792675624, ; hash 0xf3bd10182a799f28, from name: libaot-System.Threading.Timer.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.271, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1660
	%struct.DSOCacheEntry {
		i64 17573059346168436748, ; hash 0xf3e00c5e893a580c, from name: libaot-Xamarin.Android.Glide.GifDecoder
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1661
	%struct.DSOCacheEntry {
		i64 17577202782581072989, ; hash 0xf3eec4cd80c0a45d, from name: System.IO.Compression.Native
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.272, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1662
	%struct.DSOCacheEntry {
		i64 17590473451926037903, ; hash 0xf41dea67fcfda58f, from name: Xamarin.Android.Glide
		i8 1, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.269, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1663
	%struct.DSOCacheEntry {
		i64 17621652644066257425, ; hash 0xf48cafb75ce46a11, from name: libaot-System.Threading
		i8 1, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.168, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1664
	%struct.DSOCacheEntry {
		i64 17623318455445168472, ; hash 0xf4929ac34c652158, from name: libaot-System.Linq.Expressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.100, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1665
	%struct.DSOCacheEntry {
		i64 17627500474728259406, ; hash 0xf4a176498a351f4e, from name: System.Globalization
		i8 1, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.290, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1666
	%struct.DSOCacheEntry {
		i64 17634962315631480230, ; hash 0xf4bbf8cac29d4da6, from name: aot-System.Drawing.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.232, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1667
	%struct.DSOCacheEntry {
		i64 17635730081727385264, ; hash 0xf4beb3123c080eb0, from name: libaot-Xamarin.AndroidX.Browser
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.154, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1668
	%struct.DSOCacheEntry {
		i64 17636319517716736540, ; hash 0xf4c0cb28fecb6a1c, from name: libaot-System.Reflection.Emit
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.92, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1669
	%struct.DSOCacheEntry {
		i64 17669149574319189607, ; hash 0xf5356dec348a2e67, from name: aot-System.Diagnostics.TextWriterTraceListener
		i8 0, ; ignore
		i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__DSOCacheEntry_name.274, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1670
	%struct.DSOCacheEntry {
		i64 17678238194885447556, ; hash 0xf555b7f994e3cf84, from name: aot-System.Diagnostics.TraceSource.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.107, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1671
	%struct.DSOCacheEntry {
		i64 17691887770387798242, ; hash 0xf5863631080ad8e2, from name: libaot-System.Web.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1672
	%struct.DSOCacheEntry {
		i64 17694752640166504414, ; hash 0xf59063c68187a7de, from name: libaot-System.Net.ServicePoint
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.183, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1673
	%struct.DSOCacheEntry {
		i64 17697713838279961757, ; hash 0xf59ae8f82b312c9d, from name: aot-Microsoft.VisualBasic.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1674
	%struct.DSOCacheEntry {
		i64 17700327150769387356, ; hash 0xf5a431c365cfb75c, from name: System.Numerics.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.203, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1675
	%struct.DSOCacheEntry {
		i64 17704177640604968747, ; hash 0xf5b1dfc36cac272b, from name: Xamarin.AndroidX.Loader
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.228, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1676
	%struct.DSOCacheEntry {
		i64 17710060891934109755, ; hash 0xf5c6c68c9e45303b, from name: Xamarin.AndroidX.Lifecycle.ViewModel
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.224, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1677
	%struct.DSOCacheEntry {
		i64 17725651416025760223, ; hash 0xf5fe2a0c609d81df, from name: aot-System.Reflection.Primitives
		i8 1, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1678
	%struct.DSOCacheEntry {
		i64 17729255244101106781, ; hash 0xf60af7b5fce0bc5d, from name: aot-System.Net.WebHeaderCollection
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.221, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1679
	%struct.DSOCacheEntry {
		i64 17743242089888636773, ; hash 0xf63ca8ac4b925f65, from name: aot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1680
	%struct.DSOCacheEntry {
		i64 17748461991371644533, ; hash 0xf64f3425513a9e75, from name: libaot-System.Security.Cryptography.OpenSsl
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.284, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1681
	%struct.DSOCacheEntry {
		i64 17775101500844812175, ; hash 0xf6add8a3745e278f, from name: aot-System.Net.WebSockets.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1682
	%struct.DSOCacheEntry {
		i64 17798155118191535816, ; hash 0xf6ffbfc8051b66c8, from name: Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1683
	%struct.DSOCacheEntry {
		i64 17891337867145587222, ; hash 0xf84accff6fb52a16, from name: Xamarin.Jetbrains.Annotations
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.138, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1684
	%struct.DSOCacheEntry {
		i64 17895855011690415023, ; hash 0xf85ad9511bb383af, from name: Xamarin.AndroidX.Legacy.Support.Core.UI.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1685
	%struct.DSOCacheEntry {
		i64 17902061051722335752, ; hash 0xf870e5ad67440608, from name: aot-System.Net.WebHeaderCollection.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.221, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1686
	%struct.DSOCacheEntry {
		i64 17915411889064881019, ; hash 0xf8a054317485ab7b, from name: aot-System.IO.UnmanagedMemoryStream.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1687
	%struct.DSOCacheEntry {
		i64 17926963475082191739, ; hash 0xf8c95e4ca9ad237b, from name: System.Transactions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.93, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1688
	%struct.DSOCacheEntry {
		i64 17927396739616034639, ; hash 0xf8cae859ec4f4f4f, from name: libaot-System.Xml.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.150, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1689
	%struct.DSOCacheEntry {
		i64 17935548854918285502, ; hash 0xf8e7dea82d1188be, from name: aot-GoogleGson.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.120, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1690
	%struct.DSOCacheEntry {
		i64 17935984482491575587, ; hash 0xf8e96adb9fd42d23, from name: aot-System.Threading.Thread
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1691
	%struct.DSOCacheEntry {
		i64 17936373173282875089, ; hash 0xf8eacc5ec05f26d1, from name: libaot-System.Runtime.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.106, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1692
	%struct.DSOCacheEntry {
		i64 17966837238658391933, ; hash 0xf9570746b37e5f7d, from name: libaot-System.Collections.NonGeneric
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.125, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1693
	%struct.DSOCacheEntry {
		i64 17967334669611559641, ; hash 0xf958cbafdec1ead9, from name: libaot-AppNetMaui
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1694
	%struct.DSOCacheEntry {
		i64 17993787845989681834, ; hash 0xf9b6c6b5f3f4caaa, from name: Microsoft.Extensions.Logging.Debug.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.270, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1695
	%struct.DSOCacheEntry {
		i64 18001227312549183156, ; hash 0xf9d134ddbd8dbeb4, from name: mono-component-hot_reload.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.205, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1696
	%struct.DSOCacheEntry {
		i64 18017743553296241350, ; hash 0xfa0be24cb44e92c6, from name: Microsoft.Extensions.Caching.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1697
	%struct.DSOCacheEntry {
		i64 18021339913848223653, ; hash 0xfa18a92ba57df7a5, from name: aot-Xamarin.AndroidX.VectorDrawable.Animated.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.248, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1698
	%struct.DSOCacheEntry {
		i64 18025913125965088385, ; hash 0xfa28e87b91334681, from name: System.Threading
		i8 1, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.168, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1699
	%struct.DSOCacheEntry {
		i64 18035209221645796007, ; hash 0xfa49ef3b820c02a7, from name: System.Security.Cryptography.X509Certificates.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.204, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1700
	%struct.DSOCacheEntry {
		i64 18037761627775429063, ; hash 0xfa5300a1deb9e9c7, from name: libmono-component-debugger.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1701
	%struct.DSOCacheEntry {
		i64 18037857352300800674, ; hash 0xfa5357b1790eaaa2, from name: libaot-System.IO.UnmanagedMemoryStream
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1702
	%struct.DSOCacheEntry {
		i64 18040554133168495475, ; hash 0xfa5cec66b2b69b73, from name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.261, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1703
	%struct.DSOCacheEntry {
		i64 18042235568190301429, ; hash 0xfa62e5a84be6a4f5, from name: System.Threading.ThreadPool.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.222, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1704
	%struct.DSOCacheEntry {
		i64 18047428238759735039, ; hash 0xfa75585d20a0aeff, from name: libaot-Microsoft.Extensions.Logging.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.291, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1705
	%struct.DSOCacheEntry {
		i64 18051112112354944973, ; hash 0xfa826ed3c9aae7cd, from name: aot-System.Resources.ResourceManager.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.153, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1706
	%struct.DSOCacheEntry {
		i64 18057033459698909374, ; hash 0xfa977842e6b240be, from name: libaot-System.Web.HttpUtility
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1707
	%struct.DSOCacheEntry {
		i64 18058169257040316115, ; hash 0xfa9b814353c486d3, from name: System.Threading.Timer.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.271, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1708
	%struct.DSOCacheEntry {
		i64 18066658939550349411, ; hash 0xfab9aa959208b863, from name: libaot-Microsoft.Extensions.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1709
	%struct.DSOCacheEntry {
		i64 18078848640603812512, ; hash 0xfae4f90d833e72a0, from name: Microsoft.Maui.Controls.Compatibility.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.102, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1710
	%struct.DSOCacheEntry {
		i64 18086360900563295465, ; hash 0xfaffa969d596dce9, from name: aot-System.ObjectModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1711
	%struct.DSOCacheEntry {
		i64 18095796275230343585, ; hash 0xfb212ed630f101a1, from name: libaot-Microsoft.Extensions.Caching.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1712
	%struct.DSOCacheEntry {
		i64 18116111925905154859, ; hash 0xfb695bd036cb632b, from name: Xamarin.AndroidX.Arch.Core.Runtime
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1713
	%struct.DSOCacheEntry {
		i64 18117210645352064746, ; hash 0xfb6d4317c522a6ea, from name: System.Net.Quic.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.143, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1714
	%struct.DSOCacheEntry {
		i64 18121036031235206392, ; hash 0xfb7ada42d3d42cf8, from name: Xamarin.AndroidX.Navigation.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1715
	%struct.DSOCacheEntry {
		i64 18122114450755693480, ; hash 0xfb7eaf13f0442ba8, from name: libaot-System.Buffers
		i8 1, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1716
	%struct.DSOCacheEntry {
		i64 18126112496637133315, ; hash 0xfb8ce34788d34203, from name: libaot-System.Globalization.Extensions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1717
	%struct.DSOCacheEntry {
		i64 18145848498878603418, ; hash 0xfbd30111a3b6e09a, from name: libSystem.IO.Compression.Native
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.272, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1718
	%struct.DSOCacheEntry {
		i64 18226465753896977720, ; hash 0xfcf16a0903da0538, from name: libaot-System.Private.Uri
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.287, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1719
	%struct.DSOCacheEntry {
		i64 18226761139391251902, ; hash 0xfcf276afcf4f45be, from name: libaot-System.Diagnostics.FileVersionInfo.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1720
	%struct.DSOCacheEntry {
		i64 18252036729645089111, ; hash 0xfd4c42b3c1e0c157, from name: libaot-Xamarin.AndroidX.CustomView.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.277, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1721
	%struct.DSOCacheEntry {
		i64 18253685954460439423, ; hash 0xfd521ea9d526d37f, from name: aot-Xamarin.AndroidX.CardView
		i8 1, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1722
	%struct.DSOCacheEntry {
		i64 18257096356770733190, ; hash 0xfd5e3c67ff65dc86, from name: libSystem.Security.Cryptography.Native.Android.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.123, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1723
	%struct.DSOCacheEntry {
		i64 18260797123374478311, ; hash 0xfd6b623bde35f3e7, from name: Xamarin.AndroidX.Emoji2
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1724
	%struct.DSOCacheEntry {
		i64 18278807071731653235, ; hash 0xfdab5e2fbc769a73, from name: aot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.147, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1725
	%struct.DSOCacheEntry {
		i64 18292328407895211277, ; hash 0xfddb67c523617d0d, from name: aot-System.IO.Compression.Brotli.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.201, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1726
	%struct.DSOCacheEntry {
		i64 18301561429120935168, ; hash 0xfdfc352769be6500, from name: libaot-System.Security.Cryptography.Cng
		i8 1, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.244, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1727
	%struct.DSOCacheEntry {
		i64 18308205053123311821, ; hash 0xfe13cf7eaa6d38cd, from name: aot-System.Resources.Writer.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.180, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1728
	%struct.DSOCacheEntry {
		i64 18309516218928916979, ; hash 0xfe1877fe3e82e9f3, from name: libaot-System.Security.Cryptography.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1729
	%struct.DSOCacheEntry {
		i64 18318874270327655277, ; hash 0xfe39b7175fec4b6d, from name: aot-System.ServiceModel.Web.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.133, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1730
	%struct.DSOCacheEntry {
		i64 18327710550568384473, ; hash 0xfe591ba430ceb7d9, from name: libaot-Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1731
	%struct.DSOCacheEntry {
		i64 18347920244245135731, ; hash 0xfea0e8402d6e0173, from name: aot-System.Runtime.InteropServices.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.236, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1732
	%struct.DSOCacheEntry {
		i64 18350561708207496498, ; hash 0xfeaa4aa5ee97dd32, from name: System.Diagnostics.Debug.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.112, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1733
	%struct.DSOCacheEntry {
		i64 18377348929170574574, ; hash 0xff09757bd49e0cee, from name: aot-System.Private.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.229, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1734
	%struct.DSOCacheEntry {
		i64 18380184030268848184, ; hash 0xff1387fe3e7b7838, from name: Xamarin.AndroidX.VersionedParcelable
		i8 1, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.210, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1735
	%struct.DSOCacheEntry {
		i64 18400295460575378824, ; hash 0xff5afb3b81d3fd88, from name: aot-Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.160, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1736
	%struct.DSOCacheEntry {
		i64 18403914681519534522, ; hash 0xff67d6e50c9171ba, from name: aot-System.Net.Ping.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.94, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1737
	%struct.DSOCacheEntry {
		i64 18408069632533367139, ; hash 0xff7699ccf7ce8963, from name: aot-Xamarin.AndroidX.Activity.Ktx.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.239, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1738
	%struct.DSOCacheEntry {
		i64 18429503703191461742, ; hash 0xffc2bff96f791f6e, from name: aot-System.Threading.Tasks.Extensions.dll.so
		i8 1, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.223, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1739
	%struct.DSOCacheEntry {
		i64 18441817052021859583, ; hash 0xffee7ee65e8124ff, from name: Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.160, i32 0, i32 0), ; name
		i8* null; handle
	}
], align 8; end of 'dso_cache' array

@__XamarinAndroidBundledAssembly_name_0 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_1 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_2 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_3 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_4 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_5 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_6 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_7 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_8 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_9 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_10 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_11 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_12 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_13 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_14 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_15 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_16 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_17 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_18 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_19 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_20 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_21 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_22 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_23 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_24 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_25 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_26 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_27 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_28 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_29 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_30 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_31 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_32 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_33 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_34 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_35 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_36 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_37 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_38 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_39 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_40 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_41 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_42 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_43 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_44 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_45 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_46 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_47 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_48 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_49 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_50 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_51 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_52 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_53 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_54 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_55 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_56 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_57 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_58 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_59 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_60 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_61 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_62 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_63 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_64 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_65 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_66 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_67 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_68 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_69 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_70 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_71 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_72 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_73 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_74 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_75 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_76 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_77 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_78 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_79 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_80 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_81 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_82 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_83 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_84 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_85 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_86 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_87 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_88 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_89 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_90 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_91 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_92 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_93 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_94 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_95 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_96 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_97 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_98 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_99 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_100 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_101 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_102 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_103 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_104 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_105 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_106 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_107 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_108 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_109 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_110 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_111 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_112 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_113 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_114 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_115 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_116 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_117 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_118 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_119 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_120 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_121 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_122 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_123 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_124 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_125 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_126 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_127 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_128 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_129 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_130 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_131 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_132 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_133 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_134 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_135 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_136 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_137 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_138 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_139 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_140 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_141 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_142 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_143 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_144 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_145 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_146 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_147 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_148 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_149 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_150 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_151 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_152 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_153 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_154 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_155 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_156 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_157 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_158 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_159 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_160 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_161 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_162 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_163 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_164 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_165 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_166 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_167 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_168 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_169 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_170 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_171 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_172 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_173 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_174 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_175 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_176 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_177 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_178 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_179 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_180 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_181 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_182 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_183 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_184 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_185 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_186 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_187 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_188 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_189 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_190 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_191 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_192 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_193 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_194 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_195 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_196 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_197 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_198 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_199 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_200 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_201 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_202 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_203 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_204 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_205 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_206 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_207 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_208 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_209 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_210 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_211 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_212 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_213 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_214 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_215 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_216 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_217 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_218 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_219 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_220 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_221 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_222 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_223 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_224 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_225 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_226 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_227 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_228 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_229 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_230 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_231 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_232 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_233 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_234 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_235 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_236 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_237 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_238 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_239 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_240 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_241 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_242 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_243 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_244 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_245 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_246 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_247 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_248 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_249 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_250 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_251 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_252 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_253 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_254 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_255 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_256 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_257 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_258 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_259 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_260 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_261 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_262 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_263 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_264 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_265 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_266 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_267 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_268 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_269 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_270 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_271 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_272 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_273 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_274 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_275 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_276 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_277 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_278 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_279 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_280 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_281 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_282 = internal global [68 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_283 = internal global [68 x i8] zeroinitializer, align 1


; Bundled assembly name buffers, all 68 bytes long
@bundled_assemblies = local_unnamed_addr global [284 x %struct.XamarinAndroidBundledAssembly] [
	; 0
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_0, i32 0, i32 0); name
	}, 
	; 1
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_1, i32 0, i32 0); name
	}, 
	; 2
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_2, i32 0, i32 0); name
	}, 
	; 3
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_3, i32 0, i32 0); name
	}, 
	; 4
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_4, i32 0, i32 0); name
	}, 
	; 5
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_5, i32 0, i32 0); name
	}, 
	; 6
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_6, i32 0, i32 0); name
	}, 
	; 7
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_7, i32 0, i32 0); name
	}, 
	; 8
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_8, i32 0, i32 0); name
	}, 
	; 9
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_9, i32 0, i32 0); name
	}, 
	; 10
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_10, i32 0, i32 0); name
	}, 
	; 11
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_11, i32 0, i32 0); name
	}, 
	; 12
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_12, i32 0, i32 0); name
	}, 
	; 13
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_13, i32 0, i32 0); name
	}, 
	; 14
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_14, i32 0, i32 0); name
	}, 
	; 15
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_15, i32 0, i32 0); name
	}, 
	; 16
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_16, i32 0, i32 0); name
	}, 
	; 17
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_17, i32 0, i32 0); name
	}, 
	; 18
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_18, i32 0, i32 0); name
	}, 
	; 19
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_19, i32 0, i32 0); name
	}, 
	; 20
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_20, i32 0, i32 0); name
	}, 
	; 21
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_21, i32 0, i32 0); name
	}, 
	; 22
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_22, i32 0, i32 0); name
	}, 
	; 23
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_23, i32 0, i32 0); name
	}, 
	; 24
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_24, i32 0, i32 0); name
	}, 
	; 25
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_25, i32 0, i32 0); name
	}, 
	; 26
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_26, i32 0, i32 0); name
	}, 
	; 27
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_27, i32 0, i32 0); name
	}, 
	; 28
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_28, i32 0, i32 0); name
	}, 
	; 29
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_29, i32 0, i32 0); name
	}, 
	; 30
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_30, i32 0, i32 0); name
	}, 
	; 31
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_31, i32 0, i32 0); name
	}, 
	; 32
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_32, i32 0, i32 0); name
	}, 
	; 33
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_33, i32 0, i32 0); name
	}, 
	; 34
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_34, i32 0, i32 0); name
	}, 
	; 35
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_35, i32 0, i32 0); name
	}, 
	; 36
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_36, i32 0, i32 0); name
	}, 
	; 37
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_37, i32 0, i32 0); name
	}, 
	; 38
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_38, i32 0, i32 0); name
	}, 
	; 39
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_39, i32 0, i32 0); name
	}, 
	; 40
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_40, i32 0, i32 0); name
	}, 
	; 41
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_41, i32 0, i32 0); name
	}, 
	; 42
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_42, i32 0, i32 0); name
	}, 
	; 43
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_43, i32 0, i32 0); name
	}, 
	; 44
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_44, i32 0, i32 0); name
	}, 
	; 45
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_45, i32 0, i32 0); name
	}, 
	; 46
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_46, i32 0, i32 0); name
	}, 
	; 47
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_47, i32 0, i32 0); name
	}, 
	; 48
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_48, i32 0, i32 0); name
	}, 
	; 49
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_49, i32 0, i32 0); name
	}, 
	; 50
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_50, i32 0, i32 0); name
	}, 
	; 51
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_51, i32 0, i32 0); name
	}, 
	; 52
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_52, i32 0, i32 0); name
	}, 
	; 53
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_53, i32 0, i32 0); name
	}, 
	; 54
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_54, i32 0, i32 0); name
	}, 
	; 55
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_55, i32 0, i32 0); name
	}, 
	; 56
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_56, i32 0, i32 0); name
	}, 
	; 57
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_57, i32 0, i32 0); name
	}, 
	; 58
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_58, i32 0, i32 0); name
	}, 
	; 59
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_59, i32 0, i32 0); name
	}, 
	; 60
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_60, i32 0, i32 0); name
	}, 
	; 61
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_61, i32 0, i32 0); name
	}, 
	; 62
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_62, i32 0, i32 0); name
	}, 
	; 63
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_63, i32 0, i32 0); name
	}, 
	; 64
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_64, i32 0, i32 0); name
	}, 
	; 65
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_65, i32 0, i32 0); name
	}, 
	; 66
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_66, i32 0, i32 0); name
	}, 
	; 67
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_67, i32 0, i32 0); name
	}, 
	; 68
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_68, i32 0, i32 0); name
	}, 
	; 69
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_69, i32 0, i32 0); name
	}, 
	; 70
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_70, i32 0, i32 0); name
	}, 
	; 71
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_71, i32 0, i32 0); name
	}, 
	; 72
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_72, i32 0, i32 0); name
	}, 
	; 73
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_73, i32 0, i32 0); name
	}, 
	; 74
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_74, i32 0, i32 0); name
	}, 
	; 75
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_75, i32 0, i32 0); name
	}, 
	; 76
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_76, i32 0, i32 0); name
	}, 
	; 77
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_77, i32 0, i32 0); name
	}, 
	; 78
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_78, i32 0, i32 0); name
	}, 
	; 79
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_79, i32 0, i32 0); name
	}, 
	; 80
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_80, i32 0, i32 0); name
	}, 
	; 81
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_81, i32 0, i32 0); name
	}, 
	; 82
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_82, i32 0, i32 0); name
	}, 
	; 83
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_83, i32 0, i32 0); name
	}, 
	; 84
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_84, i32 0, i32 0); name
	}, 
	; 85
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_85, i32 0, i32 0); name
	}, 
	; 86
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_86, i32 0, i32 0); name
	}, 
	; 87
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_87, i32 0, i32 0); name
	}, 
	; 88
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_88, i32 0, i32 0); name
	}, 
	; 89
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_89, i32 0, i32 0); name
	}, 
	; 90
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_90, i32 0, i32 0); name
	}, 
	; 91
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_91, i32 0, i32 0); name
	}, 
	; 92
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_92, i32 0, i32 0); name
	}, 
	; 93
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_93, i32 0, i32 0); name
	}, 
	; 94
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_94, i32 0, i32 0); name
	}, 
	; 95
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_95, i32 0, i32 0); name
	}, 
	; 96
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_96, i32 0, i32 0); name
	}, 
	; 97
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_97, i32 0, i32 0); name
	}, 
	; 98
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_98, i32 0, i32 0); name
	}, 
	; 99
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_99, i32 0, i32 0); name
	}, 
	; 100
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_100, i32 0, i32 0); name
	}, 
	; 101
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_101, i32 0, i32 0); name
	}, 
	; 102
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_102, i32 0, i32 0); name
	}, 
	; 103
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_103, i32 0, i32 0); name
	}, 
	; 104
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_104, i32 0, i32 0); name
	}, 
	; 105
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_105, i32 0, i32 0); name
	}, 
	; 106
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_106, i32 0, i32 0); name
	}, 
	; 107
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_107, i32 0, i32 0); name
	}, 
	; 108
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_108, i32 0, i32 0); name
	}, 
	; 109
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_109, i32 0, i32 0); name
	}, 
	; 110
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_110, i32 0, i32 0); name
	}, 
	; 111
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_111, i32 0, i32 0); name
	}, 
	; 112
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_112, i32 0, i32 0); name
	}, 
	; 113
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_113, i32 0, i32 0); name
	}, 
	; 114
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_114, i32 0, i32 0); name
	}, 
	; 115
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_115, i32 0, i32 0); name
	}, 
	; 116
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_116, i32 0, i32 0); name
	}, 
	; 117
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_117, i32 0, i32 0); name
	}, 
	; 118
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_118, i32 0, i32 0); name
	}, 
	; 119
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_119, i32 0, i32 0); name
	}, 
	; 120
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_120, i32 0, i32 0); name
	}, 
	; 121
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_121, i32 0, i32 0); name
	}, 
	; 122
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_122, i32 0, i32 0); name
	}, 
	; 123
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_123, i32 0, i32 0); name
	}, 
	; 124
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_124, i32 0, i32 0); name
	}, 
	; 125
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_125, i32 0, i32 0); name
	}, 
	; 126
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_126, i32 0, i32 0); name
	}, 
	; 127
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_127, i32 0, i32 0); name
	}, 
	; 128
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_128, i32 0, i32 0); name
	}, 
	; 129
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_129, i32 0, i32 0); name
	}, 
	; 130
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_130, i32 0, i32 0); name
	}, 
	; 131
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_131, i32 0, i32 0); name
	}, 
	; 132
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_132, i32 0, i32 0); name
	}, 
	; 133
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_133, i32 0, i32 0); name
	}, 
	; 134
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_134, i32 0, i32 0); name
	}, 
	; 135
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_135, i32 0, i32 0); name
	}, 
	; 136
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_136, i32 0, i32 0); name
	}, 
	; 137
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_137, i32 0, i32 0); name
	}, 
	; 138
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_138, i32 0, i32 0); name
	}, 
	; 139
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_139, i32 0, i32 0); name
	}, 
	; 140
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_140, i32 0, i32 0); name
	}, 
	; 141
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_141, i32 0, i32 0); name
	}, 
	; 142
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_142, i32 0, i32 0); name
	}, 
	; 143
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_143, i32 0, i32 0); name
	}, 
	; 144
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_144, i32 0, i32 0); name
	}, 
	; 145
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_145, i32 0, i32 0); name
	}, 
	; 146
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_146, i32 0, i32 0); name
	}, 
	; 147
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_147, i32 0, i32 0); name
	}, 
	; 148
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_148, i32 0, i32 0); name
	}, 
	; 149
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_149, i32 0, i32 0); name
	}, 
	; 150
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_150, i32 0, i32 0); name
	}, 
	; 151
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_151, i32 0, i32 0); name
	}, 
	; 152
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_152, i32 0, i32 0); name
	}, 
	; 153
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_153, i32 0, i32 0); name
	}, 
	; 154
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_154, i32 0, i32 0); name
	}, 
	; 155
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_155, i32 0, i32 0); name
	}, 
	; 156
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_156, i32 0, i32 0); name
	}, 
	; 157
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_157, i32 0, i32 0); name
	}, 
	; 158
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_158, i32 0, i32 0); name
	}, 
	; 159
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_159, i32 0, i32 0); name
	}, 
	; 160
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_160, i32 0, i32 0); name
	}, 
	; 161
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_161, i32 0, i32 0); name
	}, 
	; 162
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_162, i32 0, i32 0); name
	}, 
	; 163
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_163, i32 0, i32 0); name
	}, 
	; 164
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_164, i32 0, i32 0); name
	}, 
	; 165
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_165, i32 0, i32 0); name
	}, 
	; 166
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_166, i32 0, i32 0); name
	}, 
	; 167
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_167, i32 0, i32 0); name
	}, 
	; 168
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_168, i32 0, i32 0); name
	}, 
	; 169
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_169, i32 0, i32 0); name
	}, 
	; 170
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_170, i32 0, i32 0); name
	}, 
	; 171
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_171, i32 0, i32 0); name
	}, 
	; 172
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_172, i32 0, i32 0); name
	}, 
	; 173
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_173, i32 0, i32 0); name
	}, 
	; 174
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_174, i32 0, i32 0); name
	}, 
	; 175
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_175, i32 0, i32 0); name
	}, 
	; 176
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_176, i32 0, i32 0); name
	}, 
	; 177
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_177, i32 0, i32 0); name
	}, 
	; 178
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_178, i32 0, i32 0); name
	}, 
	; 179
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_179, i32 0, i32 0); name
	}, 
	; 180
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_180, i32 0, i32 0); name
	}, 
	; 181
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_181, i32 0, i32 0); name
	}, 
	; 182
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_182, i32 0, i32 0); name
	}, 
	; 183
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_183, i32 0, i32 0); name
	}, 
	; 184
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_184, i32 0, i32 0); name
	}, 
	; 185
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_185, i32 0, i32 0); name
	}, 
	; 186
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_186, i32 0, i32 0); name
	}, 
	; 187
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_187, i32 0, i32 0); name
	}, 
	; 188
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_188, i32 0, i32 0); name
	}, 
	; 189
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_189, i32 0, i32 0); name
	}, 
	; 190
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_190, i32 0, i32 0); name
	}, 
	; 191
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_191, i32 0, i32 0); name
	}, 
	; 192
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_192, i32 0, i32 0); name
	}, 
	; 193
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_193, i32 0, i32 0); name
	}, 
	; 194
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_194, i32 0, i32 0); name
	}, 
	; 195
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_195, i32 0, i32 0); name
	}, 
	; 196
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_196, i32 0, i32 0); name
	}, 
	; 197
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_197, i32 0, i32 0); name
	}, 
	; 198
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_198, i32 0, i32 0); name
	}, 
	; 199
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_199, i32 0, i32 0); name
	}, 
	; 200
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_200, i32 0, i32 0); name
	}, 
	; 201
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_201, i32 0, i32 0); name
	}, 
	; 202
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_202, i32 0, i32 0); name
	}, 
	; 203
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_203, i32 0, i32 0); name
	}, 
	; 204
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_204, i32 0, i32 0); name
	}, 
	; 205
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_205, i32 0, i32 0); name
	}, 
	; 206
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_206, i32 0, i32 0); name
	}, 
	; 207
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_207, i32 0, i32 0); name
	}, 
	; 208
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_208, i32 0, i32 0); name
	}, 
	; 209
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_209, i32 0, i32 0); name
	}, 
	; 210
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_210, i32 0, i32 0); name
	}, 
	; 211
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_211, i32 0, i32 0); name
	}, 
	; 212
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_212, i32 0, i32 0); name
	}, 
	; 213
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_213, i32 0, i32 0); name
	}, 
	; 214
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_214, i32 0, i32 0); name
	}, 
	; 215
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_215, i32 0, i32 0); name
	}, 
	; 216
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_216, i32 0, i32 0); name
	}, 
	; 217
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_217, i32 0, i32 0); name
	}, 
	; 218
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_218, i32 0, i32 0); name
	}, 
	; 219
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_219, i32 0, i32 0); name
	}, 
	; 220
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_220, i32 0, i32 0); name
	}, 
	; 221
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_221, i32 0, i32 0); name
	}, 
	; 222
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_222, i32 0, i32 0); name
	}, 
	; 223
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_223, i32 0, i32 0); name
	}, 
	; 224
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_224, i32 0, i32 0); name
	}, 
	; 225
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_225, i32 0, i32 0); name
	}, 
	; 226
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_226, i32 0, i32 0); name
	}, 
	; 227
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_227, i32 0, i32 0); name
	}, 
	; 228
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_228, i32 0, i32 0); name
	}, 
	; 229
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_229, i32 0, i32 0); name
	}, 
	; 230
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_230, i32 0, i32 0); name
	}, 
	; 231
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_231, i32 0, i32 0); name
	}, 
	; 232
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_232, i32 0, i32 0); name
	}, 
	; 233
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_233, i32 0, i32 0); name
	}, 
	; 234
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_234, i32 0, i32 0); name
	}, 
	; 235
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_235, i32 0, i32 0); name
	}, 
	; 236
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_236, i32 0, i32 0); name
	}, 
	; 237
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_237, i32 0, i32 0); name
	}, 
	; 238
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_238, i32 0, i32 0); name
	}, 
	; 239
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_239, i32 0, i32 0); name
	}, 
	; 240
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_240, i32 0, i32 0); name
	}, 
	; 241
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_241, i32 0, i32 0); name
	}, 
	; 242
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_242, i32 0, i32 0); name
	}, 
	; 243
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_243, i32 0, i32 0); name
	}, 
	; 244
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_244, i32 0, i32 0); name
	}, 
	; 245
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_245, i32 0, i32 0); name
	}, 
	; 246
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_246, i32 0, i32 0); name
	}, 
	; 247
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_247, i32 0, i32 0); name
	}, 
	; 248
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_248, i32 0, i32 0); name
	}, 
	; 249
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_249, i32 0, i32 0); name
	}, 
	; 250
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_250, i32 0, i32 0); name
	}, 
	; 251
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_251, i32 0, i32 0); name
	}, 
	; 252
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_252, i32 0, i32 0); name
	}, 
	; 253
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_253, i32 0, i32 0); name
	}, 
	; 254
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_254, i32 0, i32 0); name
	}, 
	; 255
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_255, i32 0, i32 0); name
	}, 
	; 256
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_256, i32 0, i32 0); name
	}, 
	; 257
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_257, i32 0, i32 0); name
	}, 
	; 258
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_258, i32 0, i32 0); name
	}, 
	; 259
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_259, i32 0, i32 0); name
	}, 
	; 260
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_260, i32 0, i32 0); name
	}, 
	; 261
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_261, i32 0, i32 0); name
	}, 
	; 262
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_262, i32 0, i32 0); name
	}, 
	; 263
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_263, i32 0, i32 0); name
	}, 
	; 264
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_264, i32 0, i32 0); name
	}, 
	; 265
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_265, i32 0, i32 0); name
	}, 
	; 266
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_266, i32 0, i32 0); name
	}, 
	; 267
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_267, i32 0, i32 0); name
	}, 
	; 268
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_268, i32 0, i32 0); name
	}, 
	; 269
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_269, i32 0, i32 0); name
	}, 
	; 270
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_270, i32 0, i32 0); name
	}, 
	; 271
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_271, i32 0, i32 0); name
	}, 
	; 272
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_272, i32 0, i32 0); name
	}, 
	; 273
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_273, i32 0, i32 0); name
	}, 
	; 274
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_274, i32 0, i32 0); name
	}, 
	; 275
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_275, i32 0, i32 0); name
	}, 
	; 276
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_276, i32 0, i32 0); name
	}, 
	; 277
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_277, i32 0, i32 0); name
	}, 
	; 278
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_278, i32 0, i32 0); name
	}, 
	; 279
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_279, i32 0, i32 0); name
	}, 
	; 280
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_280, i32 0, i32 0); name
	}, 
	; 281
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_281, i32 0, i32 0); name
	}, 
	; 282
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_282, i32 0, i32 0); name
	}, 
	; 283
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 68, ; name_length
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__XamarinAndroidBundledAssembly_name_283, i32 0, i32 0); name
	}
], align 8; end of 'bundled_assemblies' array


; Assembly store individual assembly data
@assembly_store_bundled_assemblies = local_unnamed_addr global [0 x %struct.AssemblyStoreSingleAssemblyRuntimeData] zeroinitializer, align 8

; Assembly store data
@assembly_stores = local_unnamed_addr global [0 x %struct.AssemblyStoreRuntimeData] zeroinitializer, align 8

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/release/7.0.3xx @ 6678e0213cbced08ab39aa1563b84068e751d836"}
