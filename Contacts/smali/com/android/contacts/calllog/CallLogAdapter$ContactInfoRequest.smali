.class final Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContactInfoRequest"
.end annotation


# instance fields
.field public final callLogInfo:Lcom/android/contacts/calllog/ContactInfo;

.field public final convertNumber:Ljava/lang/String;

.field public final countryIso:Ljava/lang/String;

.field public final number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "callLogInfo"    # Lcom/android/contacts/calllog/ContactInfo;
    .param p4, "convertNumber"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->number:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->countryIso:Ljava/lang/String;

    .line 156
    iput-object p3, p0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->callLogInfo:Lcom/android/contacts/calllog/ContactInfo;

    .line 157
    iput-object p4, p0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->convertNumber:Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    if-ne p0, p1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 163
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 164
    :cond_2
    instance-of v3, p1, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 166
    check-cast v0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;

    .line 168
    .local v0, "other":Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->number:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 169
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->countryIso:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->countryIso:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 170
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->callLogInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->callLogInfo:Lcom/android/contacts/calllog/ContactInfo;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 171
    :cond_6
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->convertNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->convertNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 178
    const/16 v0, 0x1f

    .line 179
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 180
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->callLogInfo:Lcom/android/contacts/calllog/ContactInfo;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 181
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->countryIso:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 182
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->number:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 183
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->convertNumber:Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 184
    return v1

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->callLogInfo:Lcom/android/contacts/calllog/ContactInfo;

    invoke-virtual {v2}, Lcom/android/contacts/calllog/ContactInfo;->hashCode()I

    move-result v2

    goto :goto_0

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->countryIso:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 182
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->number:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 183
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->convertNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method
