.class final Lcom/android/phone/PhoneUtils$2;
.super Ljava/lang/Thread;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 382
    # invokes: Lcom/android/phone/PhoneUtils;->blockAnswerCall()V
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$600()V

    .line 383
    return-void
.end method
