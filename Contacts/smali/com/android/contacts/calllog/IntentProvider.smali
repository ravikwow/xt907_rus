.class public abstract Lcom/android/contacts/calllog/IntentProvider;
.super Ljava/lang/Object;
.source "IntentProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallDetailIntentProvider(Lcom/android/contacts/calllog/CallLogAdapter;IJI)Lcom/android/contacts/calllog/IntentProvider;
    .locals 6
    .param p0, "adapter"    # Lcom/android/contacts/calllog/CallLogAdapter;
    .param p1, "position"    # I
    .param p2, "id"    # J
    .param p4, "groupSize"    # I

    .prologue
    .line 70
    new-instance v0, Lcom/android/contacts/calllog/IntentProvider$3;

    move-object v1, p0

    move v2, p1

    move v3, p4

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/calllog/IntentProvider$3;-><init>(Lcom/android/contacts/calllog/CallLogAdapter;IIJ)V

    return-object v0
.end method

.method public static getPlayVoicemailIntentProvider(JLjava/lang/String;)Lcom/android/contacts/calllog/IntentProvider;
    .locals 1
    .param p0, "rowId"    # J
    .param p2, "voicemailUri"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Lcom/android/contacts/calllog/IntentProvider$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/contacts/calllog/IntentProvider$2;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public static getReturnCallIntentProvider(Ljava/lang/String;)Lcom/android/contacts/calllog/IntentProvider;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lcom/android/contacts/calllog/IntentProvider$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/IntentProvider$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract getIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method
