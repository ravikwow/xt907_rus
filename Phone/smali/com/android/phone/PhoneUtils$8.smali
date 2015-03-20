.class final Lcom/android/phone/PhoneUtils$8;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "ci"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 1907
    # getter for: Lcom/android/phone/PhoneUtils;->DBG:Z
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "query complete, updating connection.userdata"

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->access$100(Ljava/lang/String;)V

    :cond_0
    move-object v0, p2

    .line 1908
    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1912
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    # getter for: Lcom/android/phone/PhoneUtils;->DBG:Z
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- onQueryComplete: CallerInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->access$100(Ljava/lang/String;)V

    .line 1913
    :cond_1
    iget-boolean v3, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v3, :cond_2

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1930
    :cond_2
    iget v3, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-nez v3, :cond_3

    .line 1931
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    iput v3, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1949
    :cond_3
    :goto_0
    # getter for: Lcom/android/phone/PhoneUtils;->DBG:Z
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> Stashing CallerInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " into the connection..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->access$100(Ljava/lang/String;)V

    .line 1951
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_6

    .line 1952
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v1, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->motoInfo:Lcom/android/phone/MotoCallerInfo;

    .line 1953
    .local v1, "motoInfo":Lcom/android/phone/MotoCallerInfo;
    iput-object p3, v1, Lcom/android/phone/MotoCallerInfo;->googleCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1954
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1961
    .end local v1    # "motoInfo":Lcom/android/phone/MotoCallerInfo;
    :goto_1
    return-void

    .line 1938
    :cond_5
    const/4 v3, 0x0

    invoke-static {v3, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 1942
    .local v2, "newCi":Lcom/android/internal/telephony/CallerInfo;
    if-eqz v2, :cond_3

    .line 1943
    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1944
    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 1945
    move-object p3, v2

    goto :goto_0

    .line 1957
    .end local v2    # "newCi":Lcom/android/internal/telephony/CallerInfo;
    :cond_6
    # getter for: Lcom/android/phone/PhoneUtils;->DBG:Z
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "!!!error!!!,should not be here..."

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->access$100(Ljava/lang/String;)V

    .line 1958
    :cond_7
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_1
.end method
