.class public final Lcom/motorola/contacts/groups/GroupAPI$GroupIntents$ConfirmGroup;
.super Ljava/lang/Object;
.source "GroupAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/groups/GroupAPI$GroupIntents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfirmGroup"
.end annotation


# static fields
.field public static final INTENTEXTRA_AGG_GROUP_LOOKUP_KEY:Ljava/lang/String; = "INTENTEXTRA_AGG_GROUP_LOOKUP_KEY"

.field public static final INTENTEXTRA_AGG_GROUP_NAME:Ljava/lang/String; = "INTENTEXTRA_AGG_GROUP_NAME"

.field public static final INTENTEXTRA_CONFIRM_TYPE_EMAIL:Ljava/lang/String; = "vnd.android.cursor.item/email_v2"

.field public static final INTENTEXTRA_CONFIRM_TYPE_EVENT:Ljava/lang/String; = "vnd.android.cursor.item/contact_event"

.field public static final INTENTEXTRA_CONFIRM_TYPE_SMS:Ljava/lang/String; = "vnd.android.cursor.item/sms-address"

.field public static final INTENTEXTRA_STRING_ARRAY_CONFIRMED_DATALIST:Ljava/lang/String; = "EXTRA_STRING_ARRAY_CONFIRMED_DATALIST"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
