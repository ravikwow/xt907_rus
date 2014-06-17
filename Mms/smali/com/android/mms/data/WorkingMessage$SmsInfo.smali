.class Lcom/android/mms/data/WorkingMessage$SmsInfo;
.super Ljava/lang/Object;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/WorkingMessage;
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
    .locals 0

    .prologue
    .line 1875
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/data/WorkingMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/mms/data/WorkingMessage$1;

    .prologue
    .line 1875
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage$SmsInfo;-><init>()V

    return-void
.end method
