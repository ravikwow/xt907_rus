.class Lcom/motorola/messaging/composer/WorkingMessage$SmsInfo;
.super Ljava/lang/Object;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/composer/WorkingMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmsInfo"
.end annotation


# instance fields
.field public body:Ljava/lang/String;

.field public priority:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2168
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage$SmsInfo;->body:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/composer/WorkingMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/composer/WorkingMessage$1;

    .prologue
    .line 2167
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage$SmsInfo;-><init>()V

    return-void
.end method
