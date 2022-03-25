#include <gazebo/gazebo.hh>
#include <ignition/math.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <stdio.h>
#include <math.h>
//
#define PI 3.14159265

namespace gazebo
{
class AnimatedBox : public ModelPlugin
{
public: void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
    {
        // Store the pointer to the model
        this->model = _parent;

        // create the animation
        gazebo::common::PoseAnimationPtr anim(
                    //name the animation "test",
                    //make it last 10 seconds,
                    // and set it on a repeat loop
                    new gazebo::common::PoseAnimation("test", 24.0, true)); //30-12  20-18 10 24

        gazebo::common::PoseKeyFrame *key;
        key = anim->CreateKeyFrame(0.0);
       // 0.35 0.7 1.35      //0.975
        key->Translation(ignition::math::Vector3d(0.85, 1.375, 1.35));  //0.95
        key->Rotation(ignition::math::Quaterniond(0, 0, 1.5707));

        // set starting location of the box
        // for(int i=0;i<=360;i+=30){
        //     double x_new = 0.7+0.15*cos(i*PI/180);
        //     double z_new = 1.35+0.15*sin(i*PI/180);
        //     //key = anim->CreateKeyFrame(2*i/30);
        //     key = anim->CreateKeyFrame(i/30);
        //     key->Translation(ignition::math::Vector3d(x_new, 1.375, z_new));
        //     key->Rotation(ignition::math::Quaterniond(0, 0, 1.5707));
        // }

        for(int i=0;i<=360;i+=10){
            double x_new = 0.7+0.15*cos(i*PI/180);
            double z_new = 1.35+0.15*sin(i*PI/180);
            //key = anim->CreateKeyFrame(2*i/30);
            key = anim->CreateKeyFrame(i/10);
            key->Translation(ignition::math::Vector3d(x_new, 1.375, z_new));
            key->Rotation(ignition::math::Quaterniond(0, 0, 1.5707));
        }
        //set final location equal to starting location
        //key = anim->CreateKeyFrame(10);
        //key->Translation(ignition::math::Vector3d(3, 0.975, 1.2));
        //key->Rotation(ignition::math::Quaterniond(0, 0, 0));

        // set the animation
        _parent->SetAnimation(anim);
    }

    // Pointer to the model
private: physics::ModelPtr model;

    // Pointer to the update event connection
private: event::ConnectionPtr updateConnection;
};

// Register this plugin with the simulator
GZ_REGISTER_MODEL_PLUGIN(AnimatedBox)
}

