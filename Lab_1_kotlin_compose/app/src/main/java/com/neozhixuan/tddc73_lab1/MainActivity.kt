package com.neozhixuan.tddc73_lab1

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.input.TextFieldValue
import androidx.compose.ui.unit.dp
import androidx.compose.ui.tooling.preview.Preview

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ExampleScreen() {
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(text = "Example 1 - Kotlin Compose") },
                colors = TopAppBarDefaults.smallTopAppBarColors(
                    containerColor = Color(0xFF4CAF50), // Set your desired background color here
                    titleContentColor = Color.White // Set the title text color
                )
            )
        }
    ) { paddingValues ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Top
        ) {
            // Circular UI placeholder
            Surface(
                modifier = Modifier
                    .size(150.dp)
                    .padding(16.dp),
                shape = CircleShape,
                color = Color.LightGray
            ) {
                Image(
                    painter = painterResource(id = R.drawable.wheel), // Replace with your image name
                    contentDescription = "Circular Image",
                    modifier = Modifier.size(150.dp) // Adjust size if needed
                )
            }

            // Buttons arranged in a grid layout
            Spacer(modifier = Modifier.height(16.dp))
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceAround
            ) {
                Button(
                    onClick = {},
                    colors = ButtonDefaults.buttonColors(
                        containerColor = Color(0xFF808080), // Background color
                        contentColor = Color.White // Text color
                    )
                ) {
                    Text("BUTTON")
                }
                Button(
                    onClick = {},
                    colors = ButtonDefaults.buttonColors(
                        containerColor = Color(0xFF808080), // Background color
                        contentColor = Color.White // Text color
                    )
                ) {
                    Text("BUTTON")
                }
            }
            Spacer(modifier = Modifier.height(16.dp))
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceAround
            ) {
                Button(
                    onClick = {},
                    colors = ButtonDefaults.buttonColors(
                        containerColor = Color(0xFF808080), // Background color
                        contentColor = Color.White // Text color
                    )
                ) {
                    Text("BUTTON")
                }
                Button(
                    onClick = {},
                    colors = ButtonDefaults.buttonColors(
                        containerColor = Color(0xFF808080), // Background color
                        contentColor = Color.White // Text color
                    )
                ) {
                    Text("BUTTON")
                }
            }

            Spacer(modifier = Modifier.height(32.dp))

            // Email input field with label
            Row(
                modifier = Modifier.fillMaxWidth(0.9f),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text("Email")
                Spacer(modifier = Modifier.width(15.dp))
                OutlinedTextField(
                    value = TextFieldValue(""),
                    onValueChange = {},
                    modifier = Modifier.fillMaxWidth(),
                    singleLine = true
                )
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
fun PreviewExampleScreen() {
    ExampleScreen()
}
