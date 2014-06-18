.class public Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
.super Ljava/lang/Object;
.source "SimContactsUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/simcontact/util/SimContactsUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeopleInfo"
.end annotation


# instance fields
.field public diffStatus:I

.field public peopleId:J

.field public peopleName:Ljava/lang/String;

.field public primaryEmail:Ljava/lang/String;

.field public primaryNumber:Ljava/lang/String;

.field public secondaryNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
