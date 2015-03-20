.class public Lcom/motorola/messaging/frameworkadapter/Reflection;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static BUILD_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/Reflection;->BUILD_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleInitializationException(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 34
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    return-void
.end method

.method public static initReflected()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
