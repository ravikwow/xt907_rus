.class public Lcom/motorola/blur/util/ServicesBlurApp;
.super Landroid/app/Application;
.source "ServicesBlurApp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServicesBlurApp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 47
    invoke-static {p0}, Lcom/motorola/blur/util/ServicesContextUtil;->setApplicationContext(Landroid/app/Application;)V

    .line 48
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 67
    invoke-static {}, Lcom/motorola/blur/util/ServicesContextUtil;->destroy()V

    .line 68
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 69
    return-void
.end method
