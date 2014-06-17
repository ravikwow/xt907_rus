.class Lcom/android/mms/checkin/CheckinLogger$EventPair;
.super Ljava/lang/Object;
.source "CheckinLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/checkin/CheckinLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventPair"
.end annotation


# instance fields
.field mName:Ljava/lang/String;

.field mValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/checkin/CheckinLogger;


# direct methods
.method private constructor <init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/mms/checkin/CheckinLogger$EventPair;->this$0:Lcom/android/mms/checkin/CheckinLogger;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p2, p0, Lcom/android/mms/checkin/CheckinLogger$EventPair;->mName:Ljava/lang/String;

    .line 272
    iput-object p3, p0, Lcom/android/mms/checkin/CheckinLogger$EventPair;->mValue:Ljava/lang/String;

    .line 273
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/checkin/CheckinLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/mms/checkin/CheckinLogger;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/android/mms/checkin/CheckinLogger$1;

    .prologue
    .line 266
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/checkin/CheckinLogger$EventPair;-><init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
