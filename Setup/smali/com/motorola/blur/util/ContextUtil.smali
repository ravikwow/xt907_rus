.class public Lcom/motorola/blur/util/ContextUtil;
.super Ljava/lang/Object;
.source "ContextUtil.java"


# static fields
.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/blur/util/ContextUtil;->sContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/motorola/blur/util/ContextUtil;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static setApplicationContext(Landroid/app/Application;)V
    .locals 0
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 29
    sput-object p0, Lcom/motorola/blur/util/ContextUtil;->sContext:Landroid/content/Context;

    .line 30
    return-void
.end method
