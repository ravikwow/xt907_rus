.class public interface abstract Lcom/motorola/camera/ui/UI;
.super Ljava/lang/Object;
.source "UI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/motorola/camera/OrientationEvent$OnRotationChangeListener;
.implements Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract orientationChanged(I)V
.end method

.method public abstract start()V
.end method

.method public abstract windowHasFocus()V
.end method
