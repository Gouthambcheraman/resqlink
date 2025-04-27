// 1. Import required packages
const express = require('express');
const mongoose = require('mongoose');
const cors = require('cors');

// 2. Create express app
const app = express();
const PORT = 5000; // You can choose any port

// 3. Middleware
app.use(cors());
app.use(express.json()); // Parse JSON bodies

// 4. Connect to MongoDB Atlas
mongoose.connect('mongodb+srv://gouthambcheraman25:12345@cluster0.0ib9nci.mongodb.net/resqlinkDB?retryWrites=true&w=majority&appName=Cluster0', {
    useNewUrlParser: true,
    useUnifiedTopology: true,
})
    .then(() => console.log('✅ Connected to MongoDB Atlas'))
    .catch((err) => console.error('❌ Error connecting to MongoDB:', err));

// 5. Create a Volunteer Schema
const volunteerSchema = new mongoose.Schema({
    fullName: String,
    phone: String,
    location: String,
});

// 6. Create a Volunteer Model
const Volunteer = mongoose.model('Volunteer', volunteerSchema);

// 7. Create a POST route to save volunteer data
app.post('/volunteer', async (req, res) => {
    try {
        const { fullName, phone, location } = req.body;

        const newVolunteer = new Volunteer({ fullName, phone, location });
        await newVolunteer.save();

        res.status(201).json({ message: 'Volunteer registered successfully' });
    } catch (error) {
        console.error('❌ Error saving volunteer:', error);
        res.status(500).json({ message: 'Something went wrong' });
    }
});

// 8. Start server
app.listen(PORT, () => {
    console.log(`🚀 Server running on http://localhost:${PORT}`);
});
