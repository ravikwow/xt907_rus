.class public Lcom/motorola/blur/util/BlurApp;
.super Landroid/app/Application;
.source "BlurApp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BlurApp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 46
    invoke-static {p0}, Lcom/motorola/blur/util/ContextUtil;->setApplicationContext(Landroid/app/Application;)V

    .line 47
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 66
    invoke-static {}, Lcom/motorola/blur/util/ContextUtil;->destroy()V

    .line 67
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 68
    return-void
.end method
