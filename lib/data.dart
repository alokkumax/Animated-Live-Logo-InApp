import 'package:flutter/material.dart';
import 'package:pabel/model_cate.dart';


String apiKEY = "[API_KEY]";

List<Model_cate> getCategories(){
  List<Model_cate> categories = new List();
  Model_cate modelCategories = new Model_cate();

  modelCategories.imgUrl = "https://images.pexels.com/photos/2432298/pexels-photo-2432298.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  modelCategories.categoriesName="Love";
  categories.add(modelCategories);
  modelCategories = new Model_cate();

  modelCategories.imgUrl = "https://images.pexels.com/photos/1974927/pexels-photo-1974927.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  modelCategories.categoriesName="Friends";
  categories.add(modelCategories);
  modelCategories = new Model_cate();

  modelCategories.imgUrl = "https://images.pexels.com/photos/2887774/pexels-photo-2887774.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  modelCategories.categoriesName="Asthetic";
  categories.add(modelCategories);
  modelCategories = new Model_cate();

  modelCategories.imgUrl = "https://images.pexels.com/photos/1122868/pexels-photo-1122868.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  modelCategories.categoriesName="Nature";
  categories.add(modelCategories);
  modelCategories = new Model_cate();

  modelCategories.imgUrl = "https://images.pexels.com/photos/1402787/pexels-photo-1402787.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  modelCategories.categoriesName="Cars";
  categories.add(modelCategories);
  modelCategories = new Model_cate();

  modelCategories.imgUrl = "https://images.pexels.com/photos/208560/pexels-photo-208560.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  modelCategories.categoriesName="Street";
  categories.add(modelCategories);
  modelCategories = new Model_cate();

  modelCategories.imgUrl = "https://images.pexels.com/photos/194094/pexels-photo-194094.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  modelCategories.categoriesName="Art";
  categories.add(modelCategories);
  modelCategories = new Model_cate();


  return categories;


  }

