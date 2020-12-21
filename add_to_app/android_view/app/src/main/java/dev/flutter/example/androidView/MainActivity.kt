package dev.flutter.example.androidView

import android.os.Bundle
import com.google.android.material.bottomnavigation.BottomNavigationView
import androidx.appcompat.app.AppCompatActivity
import androidx.navigation.NavOptions
import androidx.navigation.findNavController
import androidx.navigation.fragment.NavHostFragment
import androidx.navigation.ui.AppBarConfiguration
import androidx.navigation.ui.setupActionBarWithNavController
import androidx.navigation.ui.setupWithNavController
import dev.flutter.example.androidView.databinding.ActivityMainBinding
import dev.flutter.example.androidView.ui.feed.FlutterViewEngine
import io.flutter.FlutterInjector
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.dart.DartExecutor

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        val navView: BottomNavigationView = binding.navView

        val navHostFragment = supportFragmentManager.findFragmentById(R.id.nav_host_fragment_activity_main) as NavHostFragment
        val navController = navHostFragment.navController
        val tabIds = setOf(R.id.navigation_feed, R.id.navigation_docs)

        val appBarConfiguration = AppBarConfiguration(tabIds)
        setupActionBarWithNavController(navController, appBarConfiguration)

        navView.setOnNavigationItemSelectedListener { menuItem ->
            if (menuItem.itemId == navController.currentBackStackEntry?.destination?.id)
                return@setOnNavigationItemSelectedListener false
            if (tabIds.contains(menuItem.itemId)) {
                navController.navigate(menuItem.itemId, null, NavOptions.Builder()
                    .setLaunchSingleTop(true)
                    .setPopUpTo(navController.currentDestination!!.id, true)
                    .build())
                return@setOnNavigationItemSelectedListener true
            }
            false
        }

        navController.addOnDestinationChangedListener { controller, destination, _ ->
            if (tabIds.indexOf(destination.id) != -1) {
                controller.graph.startDestination = destination.id
            }
        }
    }
}