.class public Lcom/motorola/messaging/frameworkadapter/content/IntentWrapper;
.super Ljava/lang/Object;
.source "IntentWrapper.java"


# static fields
.field public static ACTION_DEVICE_STORAGE_FULL:Ljava/lang/String;

.field public static ACTION_DEVICE_STORAGE_NOT_FULL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string v0, "android.intent.action.DEVICE_STORAGE_FULL"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/content/IntentWrapper;->ACTION_DEVICE_STORAGE_FULL:Ljava/lang/String;

    .line 6
    const-string v0, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/content/IntentWrapper;->ACTION_DEVICE_STORAGE_NOT_FULL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
